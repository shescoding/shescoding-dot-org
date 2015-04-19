# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
Category.find_or_create_by(name: 'Career Advancement', description: '')
Category.find_or_create_by(name: 'Coding', description: '')
Category.find_or_create_by(name: 'Communities', description: '')
Category.find_or_create_by(name: 'Learning', description: '')
Category.find_or_create_by(name: 'Events', description: '')
Category.find_or_create_by(name: 'Fair Pay', description: '')
Category.find_or_create_by(name: 'Gaming', description: '')
Category.find_or_create_by(name: 'Gender Discrimination', description: '')
Category.find_or_create_by(name: 'Imposter Syndrome', description: '')
Category.find_or_create_by(name: 'Jobs', description: '')
Category.find_or_create_by(name: 'Kids', description: '')
Category.find_or_create_by(name: 'Leadership', description: '')
Category.find_or_create_by(name: 'Mentorship', description: '')
Category.find_or_create_by(name: 'Podcasts/Videos', description: '')
Category.find_or_create_by(name: 'Research', description: '')
Category.find_or_create_by(name: 'Retaining Women', description: '')
Category.find_or_create_by(name: 'Unconscious Bias', description: '')
Category.find_or_create_by(name: 'Women Blogs', description: '')
Category.find_or_create_by(name: 'Working Mothers', description: '')

tag_list = ['advice', 'advocacy', 'African-American', 'after-school programs', 'allies', 'APIs', 
    'article', 'attrition', 'bootcamp', 'business skills', 'camps', 'civic engagement', 'clojure', 
    'companies', 'conferences', 'confidence', 'corporate training', 'creative skills', 'culture', 
    'diversity', 'django', 'equal pay', 'entrepreneurs', 'feedback', 'fellows', 'financial success', 
    'forum', 'free', 'game development', 'gender', 'gender gap', 'hackathons', 'high-school', 
    'hiring', 'influence', 'in-person', 'internships', 'job board', 'Latino/a', 'learning tracks', 
    'local', 'makerfests', 'math', 'minorities,' 'movement', 'negotiation', 'networking', 'node.js', 
    'non-profit', 'on-demand', 'online', 'online classes', 'open-source', 'paid courses', 'projects', 
    'programming support', 'python', 'resources', 'Ruby on Rails', 'science', 'sexism', 'screencasts', 
    'shows', 'social', 'social good', 'social norms', 'sponsorship', 'statistics', 'STEM', 'supporters', 
    'teachers', 'teams', 'technical skills', 'technology', 'women', 'workshops', 'youth programs']

tag_list.each do |tag|
  ActsAsTaggableOn::Tag.find_or_create_by(:name => tag)
end

res = Resource.find_or_create_by(title: 'Code School', url: 'https://www.codeschool.com/', 
	description: 'Code School teaches web technologies online with video lessons, coding challenges, and screencasts.', 
	source: 'Code School', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ["online classes", "free", "paid courses", "shows", "screencasts", "forum", 'learning tracks', 'technical skills', 'mobile development']
res.save


res = Resource.find_or_create_by(title: 'General Assembly', url: 'https://generalassemb.ly/', 
	description: 'Learn Technology, Design, And Business Skills From Industry Professionals In A Global Community.', 
	source: 'General Assembly', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ["online classes", "in-person", "local", "free", "paid courses", "creative skills", 
	"business skills", "corporate training", "companies", 'workshops', 'mobile development', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Trying To Hire A Diverse Team Of Engineers? It’s Not Just A Pipeline Issue', 
	url: 'http://techcrunch.com/2015/02/28/trying-to-hire-a-diverse-team-of-engineers-its-not-just-a-pipeline-issue', 
	description: 'Recently, there have been a flurry of articles discussing the lack of diversity in tech. Many reference “pipeline” issues as justification for the low numbers. According to the National Center for Education Statistics, blacks and Hispanics collectively make up approximately 18 percent of U.S. computer science graduates, yet Facebook, Yahoo and LinkedIn are between 8 to 11 percent non-white, non-Asian, and Google’s American workforce is only 2 percent black. Clearly, there’s more than just a pipeline issue at play.', 
	source: 'Tech Crunch', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Jobs')
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

res = Resource.find_or_create_by(title: '#Ask4More', 
	url: 'https://www.levo.com/ask4more', 
	description: "This is a movement encouraging women to demand equal pay for equal work.", 
	source: 'Levo League', public: true)
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.tag_list = ["equal pay", "movement", "women", "negotiation", "confidence"]
res.save

res = Resource.find_or_create_by(title: 'Resources, research & advocacy to level the playing field for women entrepreneurs', 
	url: 'http://athenacenter.barnard.edu/entrepreneurs', 
	description: "Provides resources, research & advocacy to level the playing field for women entrepreneurs.",	
	source: 'Athena', public: true)
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Research')
res.tag_list = ["resources", "advocacy", "entrepreneurs", "women", "social norms"]
res.save

res = Resource.find_or_create_by(title: "Beyond storytelling - Actionable ways to help with tech's 'Women Problem'", 
	url: 'http://www.autostraddle.com/beyond-storytelling-actionable-ways-to-help-with-techs-woman-problem-285336/', 
	description: "This article provides actionable ways to help with tech’s gender gap"	,
	source: 'Auto Straddle', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-4-11')
res.tag_list = ["sexism", "allies", "gender gap", "article", "supporters", "women"]
res.save

res = Resource.find_or_create_by(title: "How to comfortably (and nicely!) talk about money", 
	url: 'http://www.getbullish.com/2015/04/bullish-qa-how-to-comfortably-and-nicely-talk-about-money/', 
	description: "This resource provides advice for women on how to assertively, yet nicely, discuss compensation."	,
	source: 'Get Bullish', public: true)
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.date = DateTime.parse('2015-4-1')
res.tag_list = ["negotiation", "confidence", "equal pay", "women"]
res.save

res = Resource.find_or_create_by(title: 'ClojureBridge', 
	url: 'http://www.clojurebridge.org/', 
	description: "ClojureBridge aims to increase diversity within the Clojure community by offering free, beginner-friendly Clojure programming workshops for women."	,
	source: 'ClojureBridge', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['clojure', 'diversity', 'free', 'local', 'workshops', 'women', 'curriculum', 'open-source']
res.save

res = Resource.find_or_create_by(title: 'Code for Seattle', 
	url: 'http://codeforseattle.org/', 
	description: "Seattle residents using technology to support civic engagement and address local issues. Code for Seattle runs a weekly civic hacking night, as well as hackathons and other events focused on building the civic technology community in Seattle and building prototype solutions for local civic issues."	,
	source: 'Code for Seattle', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['local', 'civic engagement', 'social good', 'minorities', 'projects', 'hackathons']
res.save

res = Resource.find_or_create_by(title: 'Code Newbie', 
	url: 'http://www.codenewbie.org/', 
	description: "A supportive online community for people coding and learning to code."	,
	source: 'Code Newbie', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.tag_list = ['forum', 'programming support', 'online', 'on-demand']
res.save

res = Resource.find_or_create_by(title: 'Companies discover more women means more money', 
	url: 'http://thinkprogress.org/economy/2014/08/05/3467967/women-leadership-financial-performance/', 
	description: "This post discusses statistics linking more female leadership within a company to greater financial success."	,
	source: 'Think Progress', public: true)
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2014-8-5')
res.tag_list = ['women', 'companies', 'financial success']
res.save

res = Resource.find_or_create_by(title: 'Diversity in Tech', 
	url: 'http://graphics.wsj.com/diversity-in-tech-companies/', 
	description: "Sort through data in 'diversity reports' to see how tech companies rank in terms of gender and race in their custom-defined 'technology' and 'leadership' positions."	,
	source: 'The Wall Street Journal', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Jobs')
res.date = DateTime.parse('2014-12-30')
res.tag_list = ['companies', 'women', 'diversity', 'statistics']
res.save

res = Resource.find_or_create_by(title: 'Django Girls', 
	url: 'http://djangogirls.org/', 
	description: "Django Girls is a non-profit organization that empowers and helps women to organize free, one-day programming workshops by providing tools, resources and support."	,
	source: 'Django Girls', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['django', 'non-profit', 'workshops', 'diversity', 'curriculum', 'open-source', 'free', 'local', 'python']
res.save

res = Resource.find_or_create_by(title: 'GapJumpers', 
	url: 'https://www.gapjumpers.me/', 
	description: "GapJumpers hosts blind screening challenges to attract more diverse talent, and ensure that gender, education, background, etc. don't get in the way of being hired."	,
	source: 'Gap Jumpers', public: true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.tag_list = ['hiring', 'diversity', 'job board']
res.save

res = Resource.find_or_create_by(title: 'Girl Geek Academy', 
	url: 'http://girlgeekacademy.com/', 
	description: "Girl Geek Academy's mission is to increase the number of women with technology skills. Girl Geeks around the world are invited to learn and teach through workshops, intensive weekends, online courses, hackathons and makerfests."	,
	source: 'Girl Geek Academy', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['hackathons', 'game development', 'online classes', 'workshops', 'makerfests', 'free', 'diversity', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Codecademy', 
	url: 'http://www.codecademy.com/', 
	description: "Learn to code online, interactively, for free!"	,
	source: 'Codecademy', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['free', 'online classes', 'learning tracks', 'APIs']
res.save

res = Resource.find_or_create_by(title: 'Khan Academy', 
	url: 'https://www.khanacademy.org/', 
	description: "Khan Academy offers practice exercises, instructional videos, and a personalized learning dashboard that empower learners to study at their own pace in and outside of the classroom. We tackle math, science, computer programming, history, art history, economics, and more. Our math missions guide learners from kindergarten to calculus using state-of-the-art, adaptive technology that identifies strengths and learning gaps. "	,
	source: 'Khan Academy', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['online classes', 'math', 'STEM', 'science', 'teachers']
res.save

res = Resource.find_or_create_by(title: 'Lynda.com', 
	url: 'http://www.lynda.com/', 
	description: "lynda.com is a leading online learning company that helps anyone learn business, software, technology and creative skills to achieve personal and professional goals."	,
	source: 'Lynda.com', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['technology', 'creative skills', 'business skills', 'online classes', 'paid courses']
res.save

res = Resource.find_or_create_by(title: 'Node school', 
	url: 'http://nodeschool.io/', 
	description: "NodeSchool is an open source project run by volunteers with two goals: to create high quality programming curriculum and to host community learning events."	,
	source: '', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['local', 'workshops', 'node.js', 'open-source', 'free']
res.save

res = Resource.find_or_create_by(title: 'RailsBridge', 
	url: 'http://www.railsbridge.org/', 
	description: "http://www.railsbridge.org/"	,
	source: 'RailsBridge', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['open-source', 'workshops', 'local', 'Ruby on Rails', 'women', 'curriculum', 'free', 'diversity']
res.save

res = Resource.find_or_create_by(title: 'She Codes', 
	url: 'http://now.she.codes/', 
	description: "She Codes is a social coding school for women. Their mission is to educate women and girls to create the next wave of skilled female technologists, inspire change by encouraging gender parity in tech, and foster social coding and collaboration."	,
	source: 'She Codes', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['open-source', 'online classes', 'women', 'diversity', 'social', 'advice', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Treehouse', 
	url: 'http://teamtreehouse.com/', 
	description: "Learn from courses taught by expert teachers in a variety of coding languages.",
	source: 'Treehouse', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.tag_list = ['online classes', 'conferences', 'free', 'paid courses', 'technical skills', 
	'creative skills', 'mobile development', 'shows', 'forums', 'learning tracks']
res.save

res = Resource.find_or_create_by(title: 'Code HS', 
	url: 'https://codehs.com/', 
	description: "The goal of CodeHS is to spread the knowledge of computer science by offering well-crafted instructional materials supported continuously by the quality, personal attention of our enthusiastic tutors."	,
	source: 'Code HS', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['paid courses', 'online classes', 'high-school', 'learning tracks', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Black Girls Code', 
	url: 'http://www.blackgirlscode.com/', 
	description: "Black Girls CODE is devoted to showing the world that black girls can code, and do so much more. By reaching out to the community through workshops and after school programs, Black Girls CODE introduces computer coding lessons to young girls from underrepresented communities in various programming languages."	,
	source: 'Black Girls Code', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['women', 'African-American', 'after-school programs', 'local', 'STEM', 'hackathons', 'diversity']
res.save

res = Resource.find_or_create_by(title: 'CODE2040', 
	url: 'http://www.code2040.org/', 
	description: "CODE2040 is a nonprofit organization that creates pathways to educational, professional, and entrepreneurial success in technology for underrepresented minorities with a specific focus on Blacks and Latino/as. CODE2040 aims to close the achievement, skills, and wealth gaps in the United States.",	
	source: 'CODE2040', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['African-American', 'Latino/a', 'non-profit', 'advocacy', 'sponsorship', 'minorities', 'internships', 'fellows', 'equal pay', 'leadership', 'entrepreneurs', 'women', 'companies', 'diversity']
res.save

res = Resource.find_or_create_by(title: 'Girls In Tech', 
	url: '', 
	description: "Girls in Tech is a global non-profit focused on the engagement, education and empowerment of influential women in technology and entrepreneurship. GIT focuses on the promotion, growth and success of entrepreneurial and innovative women in the technology space."	,
	source: 'Girls In Tech', public: true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['non-profit', 'advocacy', 'influence', 'technology', 'entrepreneurs', 'hackathons', 'local', 'online', 'diversity', 'women']
res.save

res = Resource.find_or_create_by(title: 'Girls Teaching Girls To Code', 
	url: 'http://www.girlsteachinggirlstocode.org/', 
	description: "Girls Teaching Girls to Code is a program where Stanford women teach and inspire Bay Area high school girls to explore Computer Science and Engineering. Students learn coding basics, build exciting projects, and develop strong relationships with mentors in the field."	,
	source: 'Girls Teaching Girls to Code', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['women', 'camps', 'workshops', 'local', 'free', 'high-school']
res.save

res = Resource.find_or_create_by(title: 'Hack Hands', 
	url: 'https://hackhands.com/', 
	description: "HackHands is a fast and easy online service for 1:1 development education and problem solving."	,
	source: 'Hack Hands', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['programming support', 'technical skills', 'on-demand', 'online']
res.save

res = Resource.find_or_create_by(title: 'Hack Reactor', 
	url: 'http://www.hackreactor.com/', 
	description: "Not your typical programming, coding or development bootcamp, Hack Reactor is a 12 week, elite software career accelerator."	,
	source: 'Hack Reactor', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['bootcamp', 'in-person', 'programming support', 'technical skills', 'mobile development']
res.save

res = Resource.find_or_create_by(title: 'Hack the Hood', 
	url: 'http://www.hackthehood.org/', 
	description: "Hack the Hood is an award-winning non-profit that introduces low-income youth of color to careers in tech by hiring and training them to build websites for real small businesses in their own communities."	,
	source: 'Hack the Hood', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['non-profit', 'youth programs', 'coding', 'diversity', 'bootcamp', 'hackathons', 'internships', 'job board', 'supporters', 'women']
res.save

res = Resource.find_or_create_by(title: 'Hackbright Academy', 
	url: 'http://hackbrightacademy.com/', 
	description: "Hackbright Academy is the leading software engineering school for women founded in San Francisco in 2012. The academy graduates more female engineers than Stanford and UC Berkeley each year."	,
	source: 'Hackbright Academy', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['women', 'bootcamp', 'diversity', 'in-person', 'technical skills', 'programming support', 'fellows']
res.save

res = Resource.find_or_create_by(title: 'Levo League', 
	url: 'https://www.levo.com/', 
	description: "Levo arms you with the tools to develop your talent, build connections with peers, mentors, and jobs, and stay inspired day in and day out as you grow and develop."	,
	source: 'Levo League', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.tag_list = ['women', 'networking', 'advice', 'diversity', 'entrepreneurs', 'negotiation']
res.save

res = Resource.find_or_create_by(title: 'Women Who Code', 
	url: 'https://www.womenwhocode.com/', 
	description: "Women Who Code is a global 501(c)(3) non-profit organization dedicated to inspiring women to excel in tech careers. "	,
	source: 'Women Who Code', public: true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['non-profit', 'in-person', 'online', 'workshops', 'networking', 'women', 'diversity', 'advocacy', 'consulting', 'companies']
res.save
