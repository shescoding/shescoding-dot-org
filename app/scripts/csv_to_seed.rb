#!/usr/bin/env ruby
require "csv"
require "logger"

# All new resources for the She's Coding site are edited in a Google spreadsheet.
# We export it as CVS, and transform it into our seed file. We'll use that seed
# file to populate the database with the new resources.
# The input format is as follows:
# row[0] = title
# row[1] = URL
# row[2] = source (optional)
# row[3] = date (optional)
# row[4] = categories
# row[5] = tags
# row[6] = description

def csv_to_seed

  # Create logging file to log all problems that we encounter while writing the seed file.
  File.delete('csv_to_seed_problems.log') if File.exist? 'csv_to_seed_problems.log'
  log_file = File.open('csv_to_seed_problems.log', File::WRONLY | File::APPEND | File::CREAT)
  logger = Logger.new(log_file)
  logger.level = Logger::INFO

  # Iterates through a csv file and creates a seed file entry for each resource in the file.
  seeds_file = File.open("new_seeds.rb", 'w')
  CSV.foreach("../../ready_resources.csv") do |row|
    begin
      # Verify that we have content in the title, url, categories, tags and description sections.
      # If not, the following String conversion will throw an error that we will log in a log file.
      # Doing this conversion at the beginning prevents us from writing one or two lines about an
      # entity that we want to leave out for lack of those sections.
      String(row[0] + row[1] + row[4] + row[5] + row[6])

      #
      # Create the resource with its basic information: title, url and description.
      #
      seeds_file.puts(%$res = Resource.find_or_create_by(title: %Q[$ + String(row[0])+ %$], $)
      seeds_file.puts(%$\turl: %Q[$ + row[1] + %$], $)
      seeds_file.puts(%$\tdescription: %Q[$ + row[6] + %$], $)

      #
      # Add source. Add an empty string for the item source, if none is specified.
      #

      begin
        seeds_file.puts(%$\tsource: %Q[$ + row[2] + %$], $)
      rescue
        seeds_file.puts(%$\tsource: %Q[], $)
        logger.info("Info: No source specified for row: " + String(row))
      end
      seeds_file.puts(%$\tpublic: true)$)

      #
      # Add categories. If no categories are specified we will not add the item.
      #

      categories = row[4].split(',')
      categories.each do |category|
        category = category.strip ? category.strip : category
        seeds_file.puts(%$res.categories << Category.find_or_create_by(name: %Q[$ + category + %$])$)
      end

      #
      # Add date, if any.
      #

      begin
        # Within the Google doc, the date is formatted as 'MM/DD/YY'. For use in the seed file
        # we transform it to 'YYYY-MM-DD'.
        seeds_file.puts(%$res.date = DateTime.parse(%Q[$ + String(Date.strptime(String(row[3]),"%m/%d/%y")) + %$])$)
      rescue => err
        logger.info("Info: No date specified for row: " + String(row))
      end

      #
      # Add tags. If no tags are specified we will not add the item.
      #

      tags = row[5].split(',')
      tag_list = []
      tags.each do |tag|
        tag.strip ? tag_list.push(tag.strip) : tag_list.push(tag)
      end
      seeds_file.puts(%$res.tag_list = $ + String(tag_list))

      #
      # Save the resource.
      #

      seeds_file.puts(%$res.save$)
      seeds_file.puts()
    rescue => err
      # Error in case title, url, description, categories or tags were not specified.
      logger.error("Error: " + err.message)
      logger.error("Content row: " + String(row))
    end
  end
  seeds_file.close
end

csv_to_seed