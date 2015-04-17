# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8

#
# CATEGORIES
#
Category.delete_all
Category.create(name: 'Mentorship', description: '')
Category.create(name: 'Negotiations', description: '')
Category.create(name: 'Online Classes', description: '')
Category.create(name: 'Workshops', description: '')
Category.create(name: 'Networking', description: '')
Category.create(name: 'Leadership', description: '')
Category.create(name: 'Diversity', description: '')
Category.create(name: 'Podcasts/Youtube Channels', description: '')
Category.create(name: 'Kids', description: '')
Category.create(name: 'Gaming', description: '')
Category.create(name: 'Career Advancement', description: '')
Category.create(name: 'Sexism', description: '')
Category.create(name: 'Research/White Papers', description: '')
Category.create(name: 'Statistics', description: '')

#
# RESOURCES
#
res = Resource.find_or_create_by(title: 'Code School', url: 'https://www.codeschool.com/', 
	description: 'Code School teaches web technologies online with video lessons, coding challenges, and screencasts.', 
	source: 'Code School', public: true)
res.categories << Category.find_or_create_by(name: 'Online Classes')
res.categories << Category.find_or_create_by(name: 'Education')

res = Resource.find_or_create_by(title: 'General Assembly', url: 'https://generalassemb.ly/', 
	description: 'Learn Technology, Design, And Business Skills From Industry Professionals In A Global Community.', 
	source: 'General Assembly', public: true)
res.categories << Category.find_or_create_by(name: 'Online Classes')
res.categories << Category.find_or_create_by(name: 'Education')
res.categories << Category.find_or_create_by(name: 'Local')
res.categories << Category.find_or_create_by(name: 'Workshops')

res = Resource.find_or_create_by(title: 'Trying To Hire A Diverse Team Of Engineers? It’s Not Just A Pipeline Issue', 
	url: 'http://techcrunch.com/2015/02/28/trying-to-hire-a-diverse-team-of-engineers-its-not-just-a-pipeline-issue', 
	description: 'Recently, there have been a flurry of articles discussing the lack of diversity in tech. Many reference “pipeline” issues as justification for the low numbers. According to the National Center for Education Statistics, blacks and Hispanics collectively make up approximately 18 percent of U.S. computer science graduates, yet Facebook, Yahoo and LinkedIn are between 8 to 11 percent non-white, non-Asian, and Google’s American workforce is only 2 percent black. Clearly, there’s more than just a pipeline issue at play.', 
	source: 'Tech Crunch', public: true)
res.categories << Category.find_or_create_by(name: 'Diversity')
res.categories << Category.find_or_create_by(name: 'Hiring')
res.date = DateTime.parse('2015-2-28')

res = Resource.find_or_create_by(title: 'Why women leave tech: what the research says', 
	url: 'https://docs.google.com/document/d/1soIYek-YEIvqtu9brv3ecdPbuVzQKp_GhAozC06UrLo/edit#heading=h.xae30yo7kzy3', 
 	description: "There aren't enough women working in tech: the best-available numbers estimate that about 15% of tech company employees in technical roles are women. The numbers were improving through the seventies and early eighties, but since then they've been getting worse: women's participation in the tech i  ndustry peaked in the late eighties, and has been dropping ever since. (See chart.) The decline is unique to engineering/computer work: elsewhere in STEM women's participation is slowly growing. According to researchers, computer science has the largest diversity gap of 'almost any profession'.",
 	source: 'Tech Crunch', public: true)
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.date = DateTime.parse('2015-2-28')

res = Resource.find_or_create_by(title: 'Why women leave tech: what the research says', 
	url: 'https://docs.google.com/document/d/1soIYek-YEIvqtu9brv3ecdPbuVzQKp_GhAozC06UrLo/edit#heading=h.xae30yo7kzy3', 
 	description: "There aren't enough women working in tech: the best-available numbers estimate that about 15% of tech company employees in technical roles are women. The numbers were improving through the seventies and early eighties, but since then they've been getting worse: women's participation in the tech i  ndustry peaked in the late eighties, and has been dropping ever since. (See chart.) The decline is unique to engineering/computer work: elsewhere in STEM women's participation is slowly growing. According to researchers, computer science has the largest diversity gap of 'almost any profession'.",
 	source: 'Tech Crunch', public: true)
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.date = DateTime.parse('2015-2-28')

res = Resource.find_or_create_by(title: 'Some title here - 1', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Online Classes')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 2', 
	url: 'http://shescoding.org', 
	description: '2008 on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Negotiations')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 3', 
	url: 'http://shescoding.org', 
	description: 'research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Networking')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Workshops')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 4', 
	url: 'http://shescoding.org', 
	description: ' NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Sexism')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Podcasts/Youtube Channels')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 5', 
	url: 'http://shescoding.org', 
	description: 'recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Youtube Channels')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 6', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 7', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India  Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Statistics')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Kids')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 8', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Online Classes')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 9', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey 2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey  and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Negotiations')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 10', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India on womenin in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Networking')
res.categories << Category.find_or_create_by(name: 'Statistics')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 11', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India i2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India i2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 12', 
	url: 'http://shescoding.org', 
	description: 'including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Online Classes')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

res = Resource.find_or_create_by(title: 'Some title here - 13', 
	url: 'http://shescoding.org', 
	description: '2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.',
 	source: 'Article', public: true)
res.categories << Category.find_or_create_by(name: 'Online Classes')
res.categories << Category.find_or_create_by(name: 'Research/White Papers')
res.categories << Category.find_or_create_by(name: 'Diversity')
res.date = DateTime.parse('2015-4-14')

#
# PERSONAS
#
Persona.find_or_create_by(name: 'woman', color: '#DB2C38;', description: 'A person identifying as female',
	questions: "{'woman': [{'already in tech': [{'advance my career': 'tech_woman_career'},{'learn how to diversify my work environment': 'tech_woman_diversify'},{'become an advocate': 'tech_woman_advocate'}]},{'interested in tech': [{'become a coder': 'woman_coder'},{'find a job': 'woman_job'},{'become an advocate': 'woman_advocate'}]},{'interested in gaming': [{'learn how to get into the gaming industry': 'woman_gamer'}]}],'girl': [{'interested in tech': [{'learn how to code': 'girl_coder'}]},{'already coding or building': [{'find interesting projects and groups': 'tech_girl'}]},{'interested in games': [{'learn how to build my own games': 'girl_gamer'}]}]}")
Persona.find_or_create_by(name: 'company', color: '#00A0BE;', description: 'A company',
	questions: "{'company': [{'become an advocate': 'company_advocate'},{'diversify our work environment': 'company_diversify'}]}")
Persona.find_or_create_by(name: 'supporter', color: '#83C057;', description: 'A supporter or ally for women in tech',
	questions: "{'parent': [ {'with a kid interested in tech': [{'find resources targeted for children': 'parent_resources'},{'find tech-related workshops and camps for children': 'parent_camps'}]},{'with a kid not yet interested in tech': [{'find ways to get my child interested in tech': 'parent_interest'}]}],'man': [{'already in tech': [{'become an advocate': 'tech_man_advocate'}]}, {'interested in tech': [{'become an advocate': 'man_advocate'}]}]}")












