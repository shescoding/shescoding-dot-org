# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create({name: "Sally", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", admin: true})
u2 = User.create({name: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", admin: true})
u3 = User.create({name: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa"})
u4 = User.create({name: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa"})

# ruby encoding: utf-8
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
