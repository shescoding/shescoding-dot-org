require 'spec_helper'
require 'capybara/rspec'

describe "The Resources interface" do

  before(:all) do
    @resources = []
    resources_data = [
        { title: '#Ask4More', 
          url: 'https://www.levo.com/ask4more', 
          description: "This is a movement encouraging women to demand equal pay for equal work.", 
          source: 'Levo League', 
          public: true },
        { title: 'Resources, research & advocacy to level the playing field for women entrepreneurs', 
          url: 'http://athenacenter.barnard.edu/entrepreneurs', 
          description: "Provides resources, research & advocacy to level the playing field for women entrepreneurs.", 
          source: 'Athena', 
          public: true },
        { title: 'Django Girls', 
          url: 'http://djangogirls.org/', 
          description: "Django Girls is a non-profit organization that empowers and helps women to organize free, one-day programming workshops by providing tools, resources and support." ,
          source: 'Django Girls', 
          public: true }
      ]
    resources_data.each do |resource_data|
      @resources << Resource.find_or_create_by!(resource_data)
    end
  end

  describe "on the resources page" do
    before(:each) do
      visit resources_path
    end

    it "should list the resources titles" do
      @resources.each do |resource|
        expect(page).to have_content(resource.title)
      end
    end

  end

end