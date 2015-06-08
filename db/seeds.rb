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

tag_list = ['advice', 'advocacy', 'African-American', 'after-school programs', 'allies', 
    'ambassadors', 'APIs', 'article', 'attrition', 'awards', 'book', 'bootcamp', 'business skills', 
    'camps', 'careers', 'civic engagement', 'clojure', 'college', 'companies', 'conferences', 
    'confidence', 'corporate training', 'creative skills', 'culture', 'curriculum', 'discrimination lawsuit', 
    'diversity', 'django', 'documentary', 'elementary school', 'equal opportunities', 'equal pay', 
    'entrepreneurs', 'feedback', 'fellows', 'feminism', 'financial success', 'flexibility',  
    'forum', 'free', 'game development', 'game industry', 'game jams', 'geek', 'gender', 
    'gender equality', 'gender gap', 'gender stereotypes', 'girls', 'global', 'grants', 'hackathons', 
    'high-school', 'hiring', 'India', 'influence', 'in-person', 'international', 'internships', 
    'interviewing', 'job board', 'Latino/a', 'leadership', 'lean in', 'learning tracks', 
    'local', 'mailing list', 'makerfests', 'math', 'middle-school', 'minorities', 'misogyny', 
    'motivation', 'movement', 'mothers', 'negotiation', 'nerds', 'networking', 'node.js', 
    'non-profit', 'on-demand', 'online', 'online classes', 'open-source', 'paid courses', 'projects', 
    'programming support', 'promotion', 'public school', 'python', 'resources', 'role models', 
    'Ruby', 'Ruby on Rails', 'science', 'sexism', 'scholarships', 'screencasts', 'sexual harassment', 
    'shows', 'social', 'social belonging', 'social good', 'social impact', 'social justice', 
    'social norms', 'spanish', 'sponsorship', 'startup', 'statistics', 'STEM', 'supporters', 
    'teachers', 'teams', 'technical skills', 'technology', 'toys', 'training', 'twitter chat', 
    'UK', 'VCs', 'women', 'workforce', 'working from home', 'workplace', 'work-life balance', 
    'workshops', 'youth programs']

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
	description: "A computer science student from shares his experience interviewing for internships. He provides sage advice for companies that want to increase diversity within their engineering organizations.", 
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
res.tag_list = ['women', 'African-American', 'after-school programs', 'girls', 'local', 'STEM', 'hackathons', 'diversity']
res.save

res = Resource.find_or_create_by(title: 'CODE2040', 
	url: 'http://www.code2040.org/', 
	description: "CODE2040 is a nonprofit organization that creates pathways to educational, professional, and entrepreneurial success in technology for underrepresented minorities with a specific focus on Blacks and `/as. CODE2040 aims to close the achievement, skills, and wealth gaps in the United States.",	
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
res.tag_list = ['women', 'camps', 'workshops', 'local', 'girls', 'free', 'high-school']
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

res = Resource.find_or_create_by(title: '#YesWeCode', 
	url: 'http://www.yeswecode.org/', 
	description: "The #YesWeCode initiative targets low-opportunity youth and provides them with the necessary resources and tools to become world-class computer programmers."	,
	source: '#YesWeCode', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['youth programs', 'local', 'social good', 'minorities', 'hackathons', 'scholarships', 'African-American', 'Latino/a']
res.save

res = Resource.find_or_create_by(title: 'Black Girl Nerds', 
	url: 'http://blackgirlnerds.com/', 
	description: "Black Girl Nerds is a place for women of color with various eccentricities to express themselves freely and embrace who they are. This is not a site exclusively for Black women. It’s for ALL women who consider themselves 'nerdy' and men who love and appreciate them.",
	source: 'Black Girl Nerds', public: true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['women', 'supporters', 'African-American', 'nerds', 'social']
res.save

res = Resource.find_or_create_by(title: 'DevChix', 
	url: 'http://www.devchix.com/', 
	description: "DevChix aims to provide a healthy and safe community for women in software development, provide support and encouragement by creating a network of trusted people, educate about the need to have more women in the community, and provide mentoring and financial assistance to current and future women software developers"	,
	source: 'DevChix', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['mailing list', 'technology', 'diversity', 'women']
res.save

res = Resource.find_or_create_by(title: 'digital undivided', 
	url: 'http://www.digitalundivided.com/', 
	description: "Digital undevided actively works to disrupt pattern-matching in tech by identifying, training and supporting high performing black women founders of tech enabled companies."	,
	source: 'digital undivided', public: true)
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['women', 'African-American', 'projects', 'diversity', 'workshops']
res.save

res = Resource.find_or_create_by(title: 'Lean In', 
	url: 'http://leanin.org/', 
	description: "Lean In is focused on encouraging women to pursue their ambitions, and changing the conversation from what women can’t do to what women can do."	,
	source: 'Lean In', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.tag_list = ['women', 'networking', 'supporters', 'companies', 'local', 'online', 'diversity', 'resources']
res.save

res = Resource.find_or_create_by(title: 'Geek Girl Carrots', 
	url: 'http://geekgirlscarrots.org/', 
	description: "Geek Girls Carrots is a global organization focused on connecting, learning and inspiring women in Tech and IT. GGC creates community by organizing meetings, workshops, and other events which gather people to share their knowledge and experience.",
	source: 'Geek Girl Carrots', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['women', 'networking', 'global', 'diversity', 'in-person', 'local', 'curriculum', 'python', 'django', 'workshops', 'programming support']
res.save

res = Resource.find_or_create_by(title: 'Girl Develop It', 
	url: 'https://www.girldevelopit.com/', 
	description: "Girl Develop It is a nonprofit organization that exists to provide affordable and judgment-free opportunities for women interested in learning web and software development. Through in-person classes and community support, Girl Develop It helps women of diverse backgrounds achieve their technology goals and build confidence in their careers and their every day lives."	,
	source: 'Girl Develop It', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['networking', 'in-person', 'local', 'non-profit', 'diversity', 'workshops', 'programming support', 'women']
res.save

res = Resource.find_or_create_by(title: 'Girl Geek Dinners', 
	url: 'http://girlgeekdinners.com/', 
	description: "The mission of Girl Geek Dinners is to break down old fashioned social stereotypes, identify routes around barriers to entry for anyone to get into technology, encourage and nurture those interested in technology,  support those currently in the industry and work together to figure out the issues and the solutions, and to include men, women and children in this journey."	,
	source: 'Girl Geek Dinners', public: true)
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['networking', 'global', 'local', 'in-person', 'diversity', 'women']
res.save

res = Resource.find_or_create_by(title: 'Grace Hopper Conference', 
	url: 'http://gracehopper.org/', 
	description: "The Grace Hopper Celebration of Women in Computing is the World's Largest Gathering of Women Technologists. It is produced by the Anita Borg Institute and presented in partnership with ACM.",
	source: 'Grace Hopper Conference', public: true)
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['networking', 'conferences', 'open-source', 'local', 'global', 'advocacy', 'workshops', 'women', 'companies', 'supporters']
res.save

res = Resource.find_or_create_by(title: 'Kapor Center', 
	url: 'http://kaporcenter.org/', 
	description: "The Kapor Center for Social Impact relentlessly pursues creative strategies that will leverage information technology for positive social impact. The Kapor Center primarily works with underrepresented communities, focusing on gap-closing endeavors."	,
	source: 'Kapor Center', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['social impact', 'African-American', 'Latino/a', 'technology', 'local', 'diversity', 'entrepreneurs', 'women']
res.save

res = Resource.find_or_create_by(title: 'Latinas in STEM', 
	url: 'http://www.latinasinstem.com/', 
	description: "Latinas in STEM aims to inspire and empower Latinas to pursue, thrive and advance in Science, Technology, Engineering & Mathematics (STEM) fields. The organization offer a variety of programs for youth and adults, and was established by a group of MIT Latina alumnae."	,
	source: 'Latinas in STEM', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['youth programs', 'local', 'STEM', 'Latino/a', 'diversity', 'spanish', 'technology', 'high-school', 'middle-school']
res.save

res = Resource.find_or_create_by(title: 'PowertoFly', 
	url: 'https://www.powertofly.com/', 
	description: "Focused on getting more women in tech, PowertoFly connect women to jobs that allow for work life balance.",
	source: 'PowertoFly', public: true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.categories << Category.find_or_create_by(name: 'Working Mothers')
res.tag_list = ['work-life balance', 'working from home', 'flexibility', 'diversity', 'technology', 'hiring', 'companies', 'women', 'job board']
res.save

res = Resource.find_or_create_by(title: 'She++', 
	url: 'http://www.sheplusplus.org/', 
	description: "she++ seeks to dismantle the untrue stereotype that computer science is not a career for women. she++ works with the technology industry to create a culture that is more appealing to women, and works with women to dismantle harmful perceptions that they cannot succeed in the technology industry."	,
	source: 'She++', public: true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['documentary', 'advocacy', 'ambassadors', 'women', 'conferences', 'movement', 'fellows']
res.save

res = Resource.find_or_create_by(title: 'She++ - Documentary', 
	url: 'https://vimeo.com/63877454', 
	description: "Watch she++, a documentary created by a Stanford community for women in tech. This 12-minute documentary features Stanford students, professors and alumni discussing gender in technical fields.",
	source: '', public: true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.date = DateTime.parse('2012-1-1')
res.tag_list = ['documentary', 'advocacy', 'ambassadors', 'women', 'conferences', 'movement', 'fellows']
res.save


res = Resource.find_or_create_by(title: 'Tools For Change', 
	url: 'http://www.toolsforchangeinstem.org/', 
	description: "Tools for Change offers a series of short visual presentations aimed at a variety of audiences for use in different settings. These workshops review all that has been learned about what works and what doesn’t in creating a workplace that doesn’t push women out of the STEM pipeline."	,
	source: 'Tools For Change', public: true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Research')
res.tag_list = ['science', 'companies', 'women', 'STEM', 'supporters']
res.save

res = Resource.find_or_create_by(title: 'AppCamp4Girls', 
	url: 'http://appcamp4girls.com/', 
	description: "App Camp For Girls is a place where girls can put their creative powers to work, designing and building apps, while learning more about the business of software and being inspired by women mentors in the field."	,
	source: 'AppCamp4Girls', public: true)
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['technical skills', 'creative skills', 'girls', 'business skills', 'local', 'in-person', 'women', 'supporters', 'middle-school', 'networking', 'mobile development', 'camps']
res.save

res = Resource.find_or_create_by(title: 'Code and Cupcakes', 
	url: 'http://codeandcupcakes.net/', 
	description: "This Chicago-based beginning coding workshop for mothers and daughters is led by a professional web designer/developer and her own daughter. Use this site to learn more about the program, or register for a workshop."	,
	source: 'Code and Cupcakes', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['workshop', 'mothers', 'diversity', 'girls', 'local', 'in-person', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Square Code Camp', 
	url: 'https://squareup.com/code-camp', 
	description: "Code camp offers immersive programs that introduce dynamic and diverse high school students to careers in engineering and technology, and help female college students to pursue careers in computer science after college"	,
	source: 'Square Code Camp', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['free', 'high-school', 'in-person', 'college', 'bootcamp', 'women', 'companies', 'diversity']
res.save

res = Resource.find_or_create_by(title: 'Silicon Valley Code Camp', 
	url: 'https://www.siliconvalley-codecamp.com/', 
	description: "Code Camp is a community event where developers learn from fellow developers in the Silicon Valley area."	,
	source: 'Silicon Valley Code Camp', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['free', 'camp', 'conferences', 'workshops', 'women']
res.save

res = Resource.find_or_create_by(title: 'CodeNow', 
	url: 'http://codenow.org/', 
	description: "CodeNow teaches computer programming to underrepresented high school youth. Workshops are held on the weekend at local tech companies, where students receive instruction from industry leading software engineers."	,
	source: 'CodeNow', public: true)
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['local', 'workshops', 'youth programs', 'high-school', 'minorities', 'diversity', 'free', 'programming support']
res.save

res = Resource.find_or_create_by(title: 'Decoded - Demistifying the Digital World', 
	url: 'http://decoded.com/us/', 
	description: "With locations in London, New York, and Sydney, Decoded offers five core programs in coding. Through these world-class workshops, Decoded aims to transform people’s understanding of the digital world."	,
	source: 'Decoded', public: true)
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.tag_list = ['workshops', 'training', 'local', 'in-person', 'technology', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Flat Iron School', 
	url: 'http://flatironschool.com/', 
	description: "At two NY based campuses, the Flat Iron School offers Web and iOS Immersive courses that are 12 weeks, full-time, and train people for careers in software development. The school also offer part-time courses, corporate training, and a Pre-College Program for high school students."	,
	source: 'Flat Iron School', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['high-school', 'corporate training', 'mobile development', 'local', 'in-person', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Girls Make Games', 
	url: 'http://girlsmakegames.com/', 
	description: "Located in San Jose, CA, Girls Make Games is a series of international summer camps, workshops and game jams designed to inspire the next generation of designers, creators, and engineers."	,
	source: 'Girls Make Games', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['local', 'workshops', 'international', 'game jams', 'girls', 'women', 'technical skills', 'creative skills', 'in-person']
res.save

res = Resource.find_or_create_by(title: 'Girls Who Code', 
	url: 'http://girlswhocode.com/', 
	description: "Girls Who Code programs work to inspire, educate, and equip girls with the computing skills to pursue 21st century opportunities.",
	source: 'Girls Who Code', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['non-profit', 'local', 'women', 'high-school', 'diversity', 'in-person', 'camps', 'girls']
res.save

res = Resource.find_or_create_by(title: 'Iron Hack', 
	url: 'http://ironhack.com/en/', 
	description: "Comprehensive in-person programming courses for developers and entrepreneurs of all levels"	,
	source: 'Iron Hack', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['bootcamp', 'in-person', 'local', 'technical skills', 'spanish']
res.save

res = Resource.find_or_create_by(title: 'Ladies Learning Code', 
	url: 'http://ladieslearningcode.com/', 
	description: "Ladies Learning Code has Chapters across Canada, thriving youth programs called Girls Learning Code and Kids Learning Code. The organization is shaping digital literacy education for adults and youth in Canada.",
	source: 'Ladies Learning Code', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['workshops', 'local', 'in-person', 'camps', 'after-school programs', 'free', 'paid courses', 'girls']
res.save

res = Resource.find_or_create_by(title: 'Mission Bit', 
	url: 'http://www.missionbit.com/about-us/', 
	description: "Mission Bit is a non-profit that offers free programming classes taught by experienced engineers and entrepreneurs to San Francisco public school students. Mission Bit provides everything the students need, they just need to show up and be eager to learn."	,
	source: 'Mission Bit', public: true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['free', 'public school', 'in-person', 'local', 'technical skills', 'mobile development']
res.save

res = Resource.find_or_create_by(title: 'TechBridge Girls', 
	url: 'http://www.techbridgegirls.org/', 
	description: "Techbridge inspires girls to discover a passion for technology, science and engineering. Through hands-on learning in a variety of available programs, Techbridge empowers the next generation of innovators and leaders."	,
	source: 'TechBridge Girls', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['STEM', 'girls', 'resources', 'after-school programs', 'camp', 'local', 'in-person']
res.save

res = Resource.find_or_create_by(title: 'ThoughtSTEM', 
	url: 'http://www.thoughtstem.com/home', 
	description: "ThoughtSTEM offers expertise in computer science education. Students aged 8-18 can engage in fun projects while becoming expert coders in various locations in California.",
	source: 'ThoughtSTEM', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.tag_list = ['after-school programs', 'workshops', 'camps', 'STEM', 'local', 'in-person', 'game development']
res.save

res = Resource.find_or_create_by(title: "The only bad press is no press: What Ellen Pao's loss means for women", 
	url: 'http://arstechnica.com/tech-policy/2015/04/the-only-bad-press-is-no-press-what-ellen-paos-loss-means-for-women/', 
	description: "This article provides insight on the verdict of Ellen Pao vs. Kleiner Perkins, and discusses what Pao's loss in the courtroom means for women."	,
	source: 'Ars Technica', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Unconscious Bias')
res.date = DateTime.parse('2015-4-5')
res.tag_list = ['article', 'discrimination lawsuit', 'attrition', 'VCs', 'prmotion']
res.save

res = Resource.find_or_create_by(title: "U.S. Secretary of Commerce is taking on America's 'skills gap'", 
	url: 'http://news.yahoo.com/u-s-secretary-of-commerce-penny-pritzker-talks-to-katie-couric-184604831.html', 
	description: "Katie Couric investigates America's 'skills gap', and the increasing need for better computer programs in the US."	,
	source: 'Yahoo News', public: true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.date = DateTime.parse('2015-4-3')
res.tag_list = ['article', 'hiring', 'training', 'technology', 'technical skills']
res.save

res = Resource.find_or_create_by(title: 'Open-source: 10 entry points to tech (for girls, women, and everyone)', 
	url: 'http://opensource.com/life/15/1/10-ways-girls-and-women-can-get-open-source-and-tech', 
	description: "Here, read ten useful, practical tips for females of any age on how to successfully enter the technology field."	,
	source: 'Opensource.com', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.date = DateTime.parse('2015-1-7')
res.tag_list = ['article', 'open-source', 'women', 'girls']
res.save

res = Resource.find_or_create_by(title: 'Silicon Valley is cool and powerful. But where are the women?', 
	url: 'http://www.theguardian.com/technology/2015/mar/08/sexism-silicon-valley-women', 
	description: "This article discusses sexism and the dearth of women in tech in the Silicon Valley, and takes a look at what is being done to solve these issues. "	,
	source: 'The Guardian', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-3-8')
res.tag_list = ['article', 'sexism', 'diversity', 'lean in', 'feminism', 'VCs', 'culture', 'workplace', 'startup', 'advice']
res.save

res = Resource.find_or_create_by(title: 'State of girls and women in tech', 
	url: 'http://www.ngcproject.org/statistics', 
	description: "Here, the National Girls Collaborative Project presents compelling statistics for girls and women in STEM on one page. Statistics include information on K-12 Education, Higher Education, and Workforce and will be updated on a regular basis."	,
	source: 'National Girls Collaborative Project', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.tag_list = ['statistics', 'girls', 'women', 'companies', 'supporters', 'STEM']
res.save

res = Resource.find_or_create_by(title: 'Tech by Superwomen', 
	url: 'http://www.techbysuperwomen.com/', 
	description: "In this blog and newsletter, discover and share what's inspiring, motivating and moving women forward in the tech community. ",
	source: 'Tech by Superwomen', public: true)
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['technology', 'careers', 'diversity', 'women', 'supporters']
res.save

res = Resource.find_or_create_by(title: "Technology's Man Problem", 
	url: 'http://www.nytimes.com/2014/04/06/technology/technologys-man-problem.html?_r=3', 
	description: "This article tells the story of Elissa Shevinsky's experience with sexism, and analyzes the impact of gender bias on the tech industry as a whole. "	,
	source: 'The New York Times', public: true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2014-4-5')
res.tag_list = ['article', 'sexism', 'women', 'supporters', 'culture', 'workplace', 'startup']
res.save

res = Resource.find_or_create_by(title: 'Anita Borg Institute', 
	url: 'http://anitaborg.org/', 
	description: "The Anita Borg Institute (ABI) is a social enterprise founded on the belief that women are vital to building technology that the world needs. Wherever you are in your technical career, ABI seeks to help women reach their goals, from building your network to finding inspiration to growing your career."	,
	source: 'Anita Borg Institute ', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['conferences', 'awards', 'resources', 'grants', 'women', 'companies', 'supporters']
res.save

res = Resource.find_or_create_by(title: 'Catalyst: Gender diverse business roles in the high-tech industry', 
	url: 'http://www.catalyst.org/knowledge/high-potentials-tech-intensive-industries-gender-divide-business-roles', 
	description: "This report identifies the gender gap women experience working in business roles in tech-intensive industries from day one, uncovers the barriers holding women back and provides insight into why women leave. Finally it provides recommendations on how companies can reverse these trends by attracting and retaining top female talent."	,
	source: '', public: true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2014-10-23')
res.tag_list = ['gender gap', 'companies', 'women', 'supporters', 'diversity', 'leadership']
res.save

res = Resource.find_or_create_by(title: 'Gender Inclusivity in India', 
	url: 'https://docs.google.com/file/d/0B79UlI0LWGoAbUFGWTNJcXRMRWs/edit', 
	description: "2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders."	,
	source: 'NASSCOM', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2009-1-1')
res.tag_list = ['India', 'women', 'companies']
res.save

res = Resource.find_or_create_by(title: 'Female Attrition, Retention and Barriers to Careers in SET Academic Research', 
	url: 'http://www.wisecampaign.org.uk/files/useruploads/files/resources/female_attrition,_retention_and_barriers_to_careers_report_08_12_09.pdf', 
	description: "This paper looks at the issues impacting on women‘s career progression in academic research in scientific disciplines, which highlight the continued  importance of positive action to ensure women scientists can achieve their full potential."	,
	source: 'Women in Science and Engineering, UK', public: true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.date = DateTime.parse('2009-12-8')
res.tag_list = ['science', 'women', 'attrition', 'UK']
res.save


res = Resource.find_or_create_by(title: 'The Mini-Symposium on Women of Color in Science, Technology, Engineering, and Mathematics (STEM): A Summary of Events, Findings, and Suggestions', 
	url: 'https://www.terc.edu/pages/viewpage.action?pageId=3179194', 
	description: "Summary of Mini-Symposium, including suggestions resulting from the event."	,
	source: 'Technical Education Research Center', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2009-10-28')
res.tag_list = ['African-American', 'science', 'STEM', 'equal opportunities', 'women']
res.save

res = Resource.find_or_create_by(title: 'Problem of Attrition in the Software Sector: A Gender based Analysis.', 
	url: 'http://shodhganga.inflibnet.ac.in:8080/jspui/bitstream/10603/8487/13/13_chapter%205.pdf', 
	description: "Analysis of gender based attrition behavior of IT employees in India."	,
	source: 'NASSCOM', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.date = DateTime.parse('2008-1-1')
res.tag_list = ['India', 'attrition', 'women']
res.save

res = Resource.find_or_create_by(title: '‘Disappearing Women’: A Study of Women Who Left the UK ICT Sector', 
	url: 'http://www.scielo.cl/pdf/jotmi/v5n1/art08.pdf', 
	description: "This study draws from 9 autobiographical interviews to explore the reasons for the disporportionate number of women leaving the UK ICT sector."	,
	source: 'Scientific Electronic Library Online', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.date = DateTime.parse('2010-5-4')
res.tag_list = ['attrition', 'UK', 'diversity', 'women']
res.save

res = Resource.find_or_create_by(title: '“Free as in Sexist” Free Culture and the Gender Gap', 
	url: 'http://firstmonday.org/ojs/index.php/fm/article/view/4291/3381', 
	description: "Despite the values of freedom and openness, the free culture movement’s gender balance is as skewed (or more so) as that of the computing culture from which it arose. Based on the collection and analysis of discourse on gender and sexism within this movement over a six–year period. I suggest three possible causes: (a) some geek identities can be narrow and unappealing; (b) open communities are especially susceptible to difficult people; and, (c) the ideas of freedom and openness can be used to dismiss concerns and rationalize the gender gap as a matter of preference and choice."	,
	source: 'First Monday', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2013-1-7')
res.tag_list = ['gender gap', 'culture', 'women', 'diversity', 'sexism', 'geek']
res.save

res = Resource.find_or_create_by(title: 'Gender and the Games Industry: The Experiences of Female Game Workers', 
	url: 'http://summit.sfu.ca/item/13747', 
	description: "Thesis studying women working in the video game industry, whether the game industry is a good fit for women, and the mixed signals women receive when working in video games.", 
	source: 'Simon Fraser University, CA', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2013-2-8')
res.tag_list = ['game development', 'culture', 'diversity', 'workplace', 'women', 'sexism', 'game industry', 'misogyny']
res.save

res = Resource.find_or_create_by(title: 'Entering the Boys’ Club: An Analysis of Female Representation in Game Industry, Culture, and Design', 
	url: 'https://www.ideals.illinois.edu/handle/2142/47355', 
	description: "Numerous studies have examined the role of gender in game design, game play and game experience and conclude that women are often excluded and objectified in character design, appearance and behavior. However, in the analysis and critique of these findings, there is little to no emphasis on a plan of implementation or suggestions made concerning a change in the approach of stereotypes used in game and character design, sexism in game culture and inclusion of women in STEM related fields. This paper provides insights into the importance of gender roles and character design and representation in video games in relation to creating inclusive gaming environments for women.",
	source: 'IDEALS, IL', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.date = DateTime.parse('2014-3-1')
res.tag_list = ['game development', 'culture', 'diversity', 'workplace', 'game industry', 'misogyny', 'women', 'gender stereotypes']
res.save

res = Resource.find_or_create_by(title: 'Making Programming Masculine', 
	url: 'http://onlinelibrary.wiley.com/doi/10.1002/9780470619926.ch6/summary', 
	description: "Research on the history of the tech industry and how the field began with many women and how things transitioned to the point where people assume it started out as a hyper-masculine field."	,
	source: 'Gender Codes', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2010-8-5')
res.tag_list = ['book', 'culture', 'sexism', 'diversity', 'women', 'supporters']
res.save

res = Resource.find_or_create_by(title: 'A Question of Belonging: Race, Social Fit, and Achievement', 
	url: 'https://web.stanford.edu/~gwalton/home/Resources_files/Walton%20%26%20Cohen-A%20Question%20of%20Belonging.pdf', 
	description: "Two experiments tested how belonging uncertainty undermines the motivation and achievement of people whose group is negatively characterized in academic settings."	,
	source: 'Stanford.edu', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2007-1-1')
res.tag_list = ['culture', 'social belonging', 'women']
res.save

res = Resource.find_or_create_by(title: 'Asian workers now dominate Silicon Valley tech jobs', 
	url: 'http://www.mercurynews.com/ci_22094415/asian-workers-now-dominate-silicon-valley-tech-jobs', 
	description: "This article examines recent Census Bureau data that Asian-Americans make up half of the Bay Area's technology workforce."	,
	source: 'San Jose Mercury News', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2012-11-30')
res.tag_list = ['Asian-Americans', 'diversity', 'culture', 'workplace', 'workforce']
res.save

res = Resource.find_or_create_by(title: 'GoldieBlox', 
	url: 'http://www.goldieblox.com/', 
	description: "The goal of GoldieBlox is to get girls building. They aim to disrupt the 'pink aisle' at toy stores and inspire the future generation of female engineers."	,
	source: '', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-4-1')
res.tag_list = ['girls', 'toys', 'women']
res.save

res = Resource.find_or_create_by(title: 'GTFO - documentary on female gamers', 
	url: 'http://gtfothemovie.com/', 
	description: "Sparked by a public display of sexual harassment in 2012, GTFO pries open the video game world to explore a 20 billion dollar industry that is riddled with discrimination and misogyny. In recent years, the gaming community has grown more diverse than ever. This has led to a massive clash of values and women receive the brunt of the consequences every day, with acts of harassment ranging from name calling to cyber vandalism and death threats. Through interviews with video game developers, journalists, and academics, GTFO paints a complex picture of the video game industry, while revealing the systemic and human motivations behind acts of harassment. GTFO is the beginning of a larger conversation that will shape the future of the video game world."	,
	source: '', public: true)
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-2-3')
res.tag_list = ['game development', 'documentary', 'sexual harassment', 'culture', 'misogyny', 'game industry']
res.save

res = Resource.find_or_create_by(title: 'GTFO - documentary on female gamers', 
	url: 'http://bitchmagazine.org/post/new-documentary-gtfo-focuses-on-female-gamers', 
	description: "This article discusses 'GTFO', a documentary that shines a light on the misogyny of the video game industry."	,
	source: 'Bitch Media', public: true)
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-5-5')
res.tag_list = ['article', 'game development', 'misogyny', 'culture', 'game industry']
res.save

res = Resource.find_or_create_by(title: 'Hello Ruby', 
	url: 'http://www.helloruby.com/', 
	description: "Hello Rubu is Hello Ruby is a whimsical way to learn about technology, computing and coding. The book is available to the public beginning in Fall 2015, and the story will continue with an app."	,
	source: 'Hello Ruby', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['Ruby', 'technology', 'book', 'girls']
res.save

res = Resource.find_or_create_by(title: 'How to be a woman programmer', 
	url: 'http://www.nytimes.com/2013/05/19/opinion/sunday/how-to-be-a-woman-programmer.html', 
	description: "Ellen Ullman documents the challenges of being a female programmer."	,
	source: 'The New York Times', public: true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2013-5-18')
res.tag_list = ['article', 'motivation', 'advice', 'women', 'supporters']
res.save

res = Resource.find_or_create_by(title: 'Kodable', 
	url: 'https://www.kodable.com/', 
	description: "Computer programming curriculum for elementary children."	,
	source: 'Kodable', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['curriculum', 'elementary school', 'online', 'paid courses', 'online classes']
res.save

res = Resource.find_or_create_by(title: 'Lady Loves Code', 
	url: 'http://www.ladylovescode.com/', 
	description: "LLC is a fast growing blog, podcast, forum, and weekly Twitter chat for female developers and allies. They encourage inclusiveness and ensure beginners feel welcome and supported."	,
	source: 'Lady Loves Code', public: true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['women', 'supporters', 'allies', 'twitter chat', 'technology', 'diversity']
res.save

res = Resource.find_or_create_by(title: 'Minority Tech', 
	url: 'http://www.MinorityTech.com', 
	description: "Anjuan Simmons explores the answer to this question in Minority Tech: Journaling Through Blackness and Technology. The book is an essay anthology of the author's online and print works organized around the themes of Blackness, technology, diversity, and our collective humanity."	,
	source: 'Minority Tech', public: true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ['African-American', 'diversity', 'book', 'minorities']
res.save

res = Resource.find_or_create_by(title: 'Miss Possible', 
	url: 'http://www.bemisspossible.com/', 
	description: "Miss Possible makes sure all girls have access to strong, successful female role models by showing girls real women who did great things."	,
	source: 'Miss Possible', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['girls', 'role models', 'toys']
res.save

res = Resource.find_or_create_by(title: 'Model View Culture', 
	url: 'https://modelviewculture.com/', 
	description: "Model View Culture is an independent media platform covering technology, culture and diversity. It aims to present compelling cultural and social critique, highlight the work and achievement of diverse communities in tech, and explore the use of technology for social justice."	,
	source: 'Model View Culture', public: true)
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['article', 'women', 'social justice', 'diversity', 'technology']
res.save

res = Resource.find_or_create_by(title: 'Mother Coders', 
	url: 'http://www.mothercoders.org/', 
	description: "MotherCoders is a non-profit that helps moms on-ramp to careers in technology. They offer a tech orientation program that provides on-site childcare for moms who want to learn basic computer programming, expand their understanding of the technology landscape, and network with peers and industry professionals.",
	source: 'Mother Coders', public: true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.categories << Category.find_or_create_by(name: 'Working Mothers')
res.tag_list = ['non-profit', 'women', 'mothers', 'technology', 'networking', 'interviewing', 'careers']
res.save

res = Resource.find_or_create_by(title: 'National Center for Women & Information Technology', 
	url: 'https://www.ncwit.org/', 
	description: "The National Center for Women & Information Technology (NCWIT) is a non-profit community of more than 600 universities, companies, non-profits, and government organizations nationwide working to increase women’s participation in computing and technology. NCWIT equips change leaders with resources for taking action in recruiting, retaining, and advancing women from K–12 and higher education through industry and entrepreneurial careers."	,
	source: 'NCWIT', public: true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.tag_list = ['resources', 'women', 'companies', 'supporters', 'hiring', 'technology']
res.save

res = Resource.find_or_create_by(title: 'National Girls Collaborative Project', 
	url: 'http://www.ngcproject.org/', 
	description: "The vision of the NGCP is to bring together organizations throughout the United States that are committed to informing and encouraging girls to pursue careers in science, technology, engineering, and mathematics (STEM)."	,
	source: '', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['girls', 'STEM', 'gender equality', 'workshops', 'in-person', 'resources']
res.save

res = Resource.find_or_create_by(title: 'CODE: Debugging the Gender Gap', 
	url: 'http://codedocumentary.com/', 
	description: "CODE documentary exposes the dearth of American female and minority software engineers and explores the reasons for this gender gap and digital divide. The film highlights breakthrough efforts that are producing more diverse programmers and shows how this critical gap can be closed. CODE asks: what would society gain from having more women and minorities code and how do we get there?",
	source: 'CODE Documentary', public: true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Coding')
res.date = DateTime.parse('2015-4-19')
res.tag_list = ['documentary', 'gender gap', 'women', 'companies', 'supporters', 'diversity', 'technology']
res.save

res = Resource.find_or_create_by(title: 'Imposter Syndrome', url: 'https://counseling.caltech.edu/general/InfoandResources/Impostor', 
	description: 'General definition and information on the Imposter Syndrome, provided by the Caltech Counseling Center.', 
	source: 'Caltech', public: true)
res.categories << Category.find_or_create_by(name: 'Imposter Syndrome')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ["advice", "social", "women", "supporters", "careers", "interviewing"]
res.save

res = Resource.find_or_create_by(title: 'Tynker', url: 'www.tynker.com', 
	description: 'Makes learning to code fun and easy -- at home, school, after school and camps. Tynker offers interactive courses for children to learn programming at their own pace at home as well as a grade based curriculum for schools.', 
	source: 'Caltech', public: true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.tag_list = ["online classes", "curriculum", "game development", "projects", "middle-school", "on-demand"]
res.save

