# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
Category.create(name: 'Career Advancement', description: '')
Category.create(name: 'Coding', description: '')
Category.create(name: 'Communities', description: '')
Category.create(name: 'Learning', description: '')
Category.create(name: 'Events', description: '')
Category.create(name: 'Fair pay', description: '')
Category.create(name: 'Gaming', description: '')
Category.create(name: 'Gender Discrimination', description: '')
Category.create(name: 'Imposter Syndrome', description: '')
Category.create(name: 'Jobs', description: '')
Category.create(name: 'Kids', description: '')
Category.create(name: 'Leadership', description: '')
Category.create(name: 'Mentorship', description: '')
Category.create(name: 'Podcasts/Videos', description: '')
Category.create(name: 'Research', description: '')
Category.create(name: 'Retaining Women', description: '')
Category.create(name: 'Unconscious Bias', description: '')
Category.create(name: 'Women Blogs', description: '')
Category.create(name: 'Working Mothers', description: '')

tag_list = ['online classes', 'free courses', 'paid courses', 'shows', 'screencasts', 'forum',
'coding', 'women', 'local', 'in-person', 'design', 'business skills', 'corporate training',
'companies', 'supporters', 'hiring', 'diversity', 'attrition', 'statistics', 'advice', 'diversity', 
'culture', 'teams', 'feedback', 'social norms', 'gender', ]

tag_list.each do |tag|
  ActsAsTaggableOn::Tag.new(:name => tag).save
end

res = Resource.find_or_create_by(title: 'Code School', url: 'https://www.codeschool.com/', 
	description: 'Code School teaches web technologies online with video lessons, coding challenges, and screencasts.', 
	source: 'Code School', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ["online classes", "free courses", "paid courses", "shows", "screencasts", "forum", 
	"coding", "women"]
res.save


res = Resource.find_or_create_by(title: 'General Assembly', url: 'https://generalassemb.ly/', 
	description: 'Learn Technology, Design, And Business Skills From Industry Professionals In A Global Community.', 
	source: 'General Assembly', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ["online classes", "in-person", "local", "free courses", "paid courses", "design", 
	"business skills", "corporate training", "women", "companies"]
res.save

res = Resource.find_or_create_by(title: 'Trying To Hire A Diverse Team Of Engineers? It’s Not Just A Pipeline Issue', 
	url: 'http://techcrunch.com/2015/02/28/trying-to-hire-a-diverse-team-of-engineers-its-not-just-a-pipeline-issue', 
	description: 'Recently, there have been a flurry of articles discussing the lack of diversity in tech. Many reference “pipeline” issues as justification for the low numbers. According to the National Center for Education Statistics, blacks and Hispanics collectively make up approximately 18 percent of U.S. computer science graduates, yet Facebook, Yahoo and LinkedIn are between 8 to 11 percent non-white, non-Asian, and Google’s American workforce is only 2 percent black. Clearly, there’s more than just a pipeline issue at play.', 
	source: 'Tech Crunch', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Hiring')
res.date = DateTime.parse('2015-2-28')
res.tag_list = ["companies", "hiring", "diversity"]
res.save

res = Resource.find_or_create_by(title: 'Why women leave tech: what the research says', 
	url: 'https://docs.google.com/document/d/1soIYek-YEIvqtu9brv3ecdPbuVzQKp_GhAozC06UrLo/edit#heading=h.xae30yo7kzy3', 
	description: "A research-based article, this piece explores the reasons why women leave tech, and looks at what is being done to increase the retention of women in tech.",
	source: 'Google Doc', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ["women", "companies", "supporters", "attrition", "statistics", "advice"]
res.save

res = Resource.find_or_create_by(title: 'How Our Engineering Environments are Killing Diversity', 
	url: 'https://kateheddleston.com/blog/how-our-engineering-environments-are-killing-diversity-introduction', 
	description: "Kate Heddleston's blog series takes a look at a variety of problems with engineering and tech environments that are hindering attempts to create diverse teams. This blog discusses why diversity matters, how environments affect us, why we need to talk about them, and how can they hurt diversity.", 
	source: 'Blog', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ["work environments", "diversity", "culture", "teams", "feedback", "social norms", 
	"gender", "women", "companies", "supporters"]
res.save

