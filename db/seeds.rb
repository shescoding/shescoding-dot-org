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

def createOrUpdateResource(title, url, description, source, isPublic)
	res = Resource.find_or_create_by(title: title) 
	
	res.url = url
	res.description = description
	res.source = source 
	res.public = isPublic
	
	return res
end


res = createOrUpdateResource("Code School", 
	"https://www.codeschool.com/",
	"Code School teaches web technologies online with video lessons, coding challenges, and screencasts.", 
	"Code School", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ["online classes", "free", "paid courses", "shows", "screencasts", "forum", 'learning tracks', 'technical skills', 'mobile development']
res.save


res = createOrUpdateResource("General Assembly",
	"https://generalassemb.ly/", 
	"Learn Technology, Design, And Business Skills From Industry Professionals In A Global Community.", 
	"General Assembly",
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ["online classes", "in-person", "local", "free", "paid courses", "creative skills", "business skills", "corporate training", "companies", 'workshops', 'mobile development', 'technical skills']
res.save

res = createOrUpdateResource("Trying To Hire A Diverse Team Of Engineers? It’s Not Just A Pipeline Issue",
	 "http://techcrunch.com/2015/02/28/trying-to-hire-a-diverse-team-of-engineers-its-not-just-a-pipeline-issue" , 
	 "A computer science student from shares his experience interviewing for internships. He provides sage advice for companies that want to increase diversity within their engineering organizations.",
	 "Tech Crunch", 
	 true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Jobs')
res.date = DateTime.parse('2015-2-28')
res.tag_list = ["companies", "hiring", "diversity"]
res.save

res = createOrUpdateResource("Why women leave tech: what the research says" ,
	"https://docs.google.com/document/d/1soIYek-YEIvqtu9brv3ecdPbuVzQKp_GhAozC06UrLo/edit#heading=h.xae30yo7kzy3" , 
	"A research-based article, this piece explores the reasons why women leave tech, and looks at what is being done to increase the retention of women in tech.", 
	"Google Doc",
	true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ["women", "companies", "supporters", "attrition", "statistics", "advice"]
res.save

res = createOrUpdateResource("How Our Engineering Environments are Killing Diversity" , 
	"https://kateheddleston.com/blog/how-our-engineering-environments-are-killing-diversity-introduction", 
	"Kate Heddleston's blog series takes a look at a variety of problems with engineering and tech environments that are hindering attempts to create diverse teams. This blog discusses why diversity matters, how 			environments affect us, why we need to talk about them, and how can they hurt diversity.", 
	"Blog", 
	true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ["work environments", "diversity", "culture", "teams", "feedback", "social norms", "gender", "women", "companies", "supporters"]
res.save

res = createOrUpdateResource("#Ask4More", 
	"https://www.levo.com/ask4more", 
	"This is a movement encouraging women to demand equal pay for equal work.", 
	"Levo League", 
	true)
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.tag_list = ["equal pay", "movement", "women", "negotiation", "confidence"]
res.save

res = createOrUpdateResource("Resources, research & advocacy to level the playing field for women entrepreneurs", 
	"http://athenacenter.barnard.edu/entrepreneurs" , 
	"Provides resources, research & advocacy to level the playing field for women entrepreneurs." , 
	"Athena", 
	true)
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Research')
res.tag_list = ["resources", "advocacy", "entrepreneurs", "women", "social norms"]
res.save

res = createOrUpdateResource("Beyond storytelling - Actionable ways to help with tech's 'Women Problem", 
	"http://www.autostraddle.com/beyond-storytelling-actionable-ways-to-help-with-techs-woman-problem-285336/" , 
	"This article provides actionable ways to help with tech’s gender gap" , 
	"Auto Straddle", 
	true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-4-11')
res.tag_list = ["sexism", "allies", "gender gap", "article", "supporters", "women"]
res.save

res = createOrUpdateResource("How to comfortably (and nicely!) talk about money", 
	"http://www.getbullish.com/2015/04/bullish-qa-how-to-comfortably-and-nicely-talk-about-money/" , 
	"This resource provides advice for women on how to assertively, yet nicely, discuss compensation." , 
	"Get Bullish" , 
	true)
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.date = DateTime.parse('2015-4-1')
res.tag_list = ["negotiation", "confidence", "equal pay", "women"]
res.save

res = createOrUpdateResource("ClojureBridge" , 
	"http://www.clojurebridge.org/" , 
	"ClojureBridge aims to increase diversity within the Clojure community by offering free, beginner-friendly Clojure programming workshops for women.", 
	"ClojureBridge", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['clojure', 'diversity', 'free', 'local', 'workshops', 'women', 'curriculum', 'open-source']
res.save

res = createOrUpdateResource("Code for Seattle",
	"http://codeforseattle.org/", 
	"Seattle residents using technology to support civic engagement and address local issues. Code for Seattle runs a weekly civic hacking night, as well as hackathons and other events focused on building the civic 			technology community in Seattle and building prototype solutions for local civic issues." , 
	"Code for Seattle", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['local', 'civic engagement', 'social good', 'minorities', 'projects', 'hackathons']
res.save

res = createOrUpdateResource("Code Newbie", 
	"http://www.codenewbie.org/" , 
	"A supportive online community for people coding and learning to code.", 
	"Code Newbie", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.tag_list = ['forum', 'programming support', 'online', 'on-demand']
res.save

res = createOrUpdateResource("Companies discover more women means more money" , 
	"http://thinkprogress.org/economy/2014/08/05/3467967/women-leadership-financial-performance/" , 
	"This post discusses statistics linking more female leadership within a company to greater financial success.",
	"Think Progress", 
	true)
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2014-8-5')
res.tag_list = ['women', 'companies', 'financial success']
res.save

res = createOrUpdateResource("Diversity in Tech",
	"http://graphics.wsj.com/diversity-in-tech-companies/",
	"Sort through data in 'diversity reports' to see how tech companies rank in terms of gender and race in their custom-defined 'technology' and 'leadership' positions.",
	"The Wall Street Journal",
	true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Jobs')
res.date = DateTime.parse('2014-12-30')
res.tag_list = ['companies', 'women', 'diversity', 'statistics']
res.save

res = createOrUpdateResource("Django Girls",
	"http://djangogirls.org/", 
	"Django Girls is a non-profit organization that empowers and helps women to organize free, one-day programming workshops by providing tools, resources and support."	,
	"Django Girls", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['django', 'non-profit', 'workshops', 'diversity', 'curriculum', 'open-source', 'free', 'local', 'python']
res.save

res = createOrUpdateResource("GapJumpers", 
	"https://www.gapjumpers.me/",
	"GapJumpers hosts blind screening challenges to attract more diverse talent, and ensure that gender, education, background, etc. don't get in the way of being hired."	,
	"Gap Jumpers", 
	true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.tag_list = ['hiring', 'diversity', 'job board']
res.save

res = createOrUpdateResource("Girl Geek Academy", 
	"http://girlgeekacademy.com/",
	"Girl Geek Academy's mission is to increase the number of women with technology skills. Girl Geeks around the world are invited to learn and teach through workshops, intensive weekends, online courses, hackathons and 	makerfests.",
	"Girl Geek Academy", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['hackathons', 'game development', 'online classes', 'workshops', 'makerfests', 'free', 'diversity', 'technical skills']
res.save

res = createOrUpdateResource("Codecademy", 
	"http://www.codecademy.com/", 
	"Learn to code online, interactively, for free!",
	"Codecademy", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['free', 'online classes', 'learning tracks', 'APIs']
res.save

res = createOrUpdateResource("Khan Academy",
	"https://www.khanacademy.org/", 
	"Khan Academy offers practice exercises, instructional videos, and a personalized learning dashboard that empower learners to study at their own pace in and outside of the classroom. We tackle math, science, computer programming, history, art history, economics, and more. Our math missions guide learners from kindergarten to calculus using state-of-the-art, adaptive technology that identifies strengths and learning gaps. "	,
	"Khan Academy",
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['online classes', 'math', 'STEM', 'science', 'teachers']
res.save

res = createOrUpdateResource("Lynda.com",
	"http://www.lynda.com/",
	"lynda.com is a leading online learning company that helps anyone learn business, software, technology and creative skills to achieve personal and professional goals."	,
	"Lynda.com", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['technology', 'creative skills', 'business skills', 'online classes', 'paid courses']
res.save

res = createOrUpdateResource("Node school", 
	"http://nodeschool.io/",
	"NodeSchool is an open source project run by volunteers with two goals: to create high quality programming curriculum and to host community learning events.",
	"Node school",
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['local', 'workshops', 'node.js', 'open-source', 'free']
res.save

res = createOrUpdateResource("RailsBridge",
	"http://www.railsbridge.org/",
	"http://www.railsbridge.org/"	,
	"RailsBridge", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['open-source', 'workshops', 'local', 'Ruby on Rails', 'women', 'curriculum', 'free', 'diversity']
res.save

res = createOrUpdateResource("She Codes",
	"http://now.she.codes/", 
	"She Codes is a social coding school for women. Their mission is to educate women and girls to create the next wave of skilled female technologists, inspire change by encouraging gender parity in tech, and foster social 	coding and collaboration.",
	"She Codes",
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['open-source', 'online classes', 'women', 'diversity', 'social', 'advice', 'technical skills']
res.save

res = createOrUpdateResource("Treehouse", 
	"http://teamtreehouse.com/", 
	"Learn from courses taught by expert teachers in a variety of coding languages.",
	"Treehouse",
	 true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.tag_list = ['online classes', 'conferences', 'free', 'paid courses', 'technical skills', 
	'creative skills', 'mobile development', 'shows', 'forums', 'learning tracks']
res.save

res = createOrUpdateResource("Code HS", 
	"https://codehs.com/", 
	"The goal of CodeHS is to spread the knowledge of computer science by offering well-crafted instructional materials supported continuously by the quality, personal attention of our enthusiastic tutors."	,
	"Code HS",  
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['paid courses', 'online classes', 'high-school', 'learning tracks', 'technical skills']
res.save

res = createOrUpdateResource("Black Girls Code", 
	"http://www.blackgirlscode.com/", 
	"Black Girls CODE is devoted to showing the world that black girls can code, and do so much more. By reaching out to the community through workshops and after school programs, Black Girls CODE introduces computer 	coding lessons to young girls from underrepresented communities in various programming languages."	,
	"Black Girls Code", 
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['women', 'African-American', 'after-school programs', 'girls', 'local', 'STEM', 'hackathons', 'diversity']
res.save

res = createOrUpdateResource("CODE2040", 
	"http://www.code2040.org/", 
	"CODE2040 is a nonprofit organization that creates pathways to educational, professional, and entrepreneurial success in technology for underrepresented minorities with a specific focus on Blacks and `/as. CODE2040 	aims to close the achievement, skills, and wealth gaps in the United States.",	
	"CODE2040",
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['African-American', 'Latino/a', 'non-profit', 'advocacy', 'sponsorship', 'minorities', 'internships', 'fellows', 'equal pay', 'leadership', 'entrepreneurs', 'women', 'companies', 'diversity']
res.save

res = createOrUpdateResource("Girls In Tech",
	"http://www.girlsintech.org", 
	"Girls in Tech is a global non-profit focused on the engagement, education and empowerment of influential women in technology and entrepreneurship. GIT focuses on the promotion, growth and success of entrepreneurial 	and innovative women in the technology space."	,
	"Girls In Tech",
	 true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['non-profit', 'advocacy', 'influence', 'technology', 'entrepreneurs', 'hackathons', 'local', 'online', 'diversity', 'women']
res.save

res = createOrUpdateResource("Girls Teaching Girls To Code",
	"http://www.girlsteachinggirlstocode.org/", 
	"Girls Teaching Girls to Code is a program where Stanford women teach and inspire Bay Area high school girls to explore Computer Science and Engineering. Students learn coding basics, build exciting projects, and 		develop strong relationships with mentors in the field.",
	"Girls Teaching Girls to Code",
	true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['women', 'camps', 'workshops', 'local', 'girls', 'free', 'high-school']
res.save

res = createOrUpdateResource("Hack Hands",
	"https://hackhands.com/", 
	"HackHands is a fast and easy online service for 1:1 development education and problem solving."	,
	"Hack Hands", 
	true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['programming support', 'technical skills', 'on-demand', 'online']
res.save

res = createOrUpdateResource("Hack Reactor",
	"http://www.hackreactor.com/", 
	"Not your typical programming, coding or development bootcamp, Hack Reactor is a 12 week, elite software career accelerator.",
	"Hack Reactor",
	 true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['bootcamp', 'in-person', 'programming support', 'technical skills', 'mobile development']
res.save

res = createOrUpdateResource("Hack the Hood", 
	"http://www.hackthehood.org/", 
	"Hack the Hood is an award-winning non-profit that introduces low-income youth of color to careers in tech by hiring and training them to build websites for real small businesses in their own communities.",
	"Hack the Hood",
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['non-profit', 'youth programs', 'coding', 'diversity', 'bootcamp', 'hackathons', 'internships', 'job board', 'supporters', 'women']
res.save

res = createOrUpdateResource("Hackbright Academy",
	"http://hackbrightacademy.com/", 
	"Hackbright Academy is the leading software engineering school for women founded in San Francisco in 2012. The academy graduates more female engineers than Stanford and UC Berkeley each year."	,
	"Hackbright Academy", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['women', 'bootcamp', 'diversity', 'in-person', 'technical skills', 'programming support', 'fellows']
res.save

res = createOrUpdateResource("Levo League", 
	"https://www.levo.com/", 
	"Levo arms you with the tools to develop your talent, build connections with peers, mentors, and jobs, and stay inspired day in and day out as you grow and develop.",
	"Levo League", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.tag_list = ['women', 'networking', 'advice', 'diversity', 'entrepreneurs', 'negotiation']
res.save

res = createOrUpdateResource("Women Who Code", 
	"https://www.womenwhocode.com/", 
	"Women Who Code is a global 501(c)(3) non-profit organization dedicated to inspiring women to excel in tech careers. ",
	"Women Who Code", 
	true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['non-profit', 'in-person', 'online', 'workshops', 'networking', 'women', 'diversity', 'advocacy', 'consulting', 'companies']
res.save

res = createOrUpdateResource("#YesWeCode", 
	"http://www.yeswecode.org/", 
	"The #YesWeCode initiative targets low-opportunity youth and provides them with the necessary resources and tools to become world-class computer programmers.",
	"#YesWeCode", 
	true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['youth programs', 'local', 'social good', 'minorities', 'hackathons', 'scholarships', 'African-American', 'Latino/a']
res.save

res = createOrUpdateResource("Black Girl Nerds", 
	"http://blackgirlnerds.com/", 
	"Black Girl Nerds is a place for women of color with various eccentricities to express themselves freely and embrace who they are. This is not a site exclusively for Black women. It’s for ALL women who consider 			themselves 'nerdy' and men who love and appreciate them.",
	"Black Girl Nerds",
	true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['women', 'supporters', 'African-American', 'nerds', 'social']
res.save

res = createOrUpdateResource("DevChix",
	"http://www.devchix.com/",
	"DevChix aims to provide a healthy and safe community for women in software development, provide support and encouragement by creating a network of trusted people, educate about the need to have more women in 	the community, and provide mentoring and financial assistance to current and future women software developers.",
	"DevChix", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['mailing list', 'technology', 'diversity', 'women']
res.save

res = createOrUpdateResource("digital undivided", 
	"http://www.digitalundivided.com/",
	"Digital undevided actively works to disrupt pattern-matching in tech by identifying, training and supporting high performing black women founders of tech enabled companies.",
	"digital undivided", 
	true)
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['women', 'African-American', 'projects', 'diversity', 'workshops']
res.save

res = createOrUpdateResource("Lean In",
	"http://leanin.org/",
	"Lean In is focused on encouraging women to pursue their ambitions, and changing the conversation from what women can’t do to what women can do.",
	"Lean In", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.tag_list = ['women', 'networking', 'supporters', 'companies', 'local', 'online', 'diversity', 'resources']
res.save

res = createOrUpdateResource("Geek Girl Carrots", 
	"http://geekgirlscarrots.org/", 
	"Geek Girls Carrots is a global organization focused on connecting, learning and inspiring women in Tech and IT. GGC creates community by organizing meetings, workshops, and other events which gather people to share 	their knowledge and experience.",
	"Geek Girl Carrots",
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['women', 'networking', 'global', 'diversity', 'in-person', 'local', 'curriculum', 'python', 'django', 'workshops', 'programming support']
res.save

res = createOrUpdateResource("Girl Develop It",
	"https://www.girldevelopit.com/",
	"Girl Develop It is a nonprofit organization that exists to provide affordable and judgment-free opportunities for women interested in learning web and software development. Through in-person classes and community 		support, Girl Develop It helps women of diverse backgrounds achieve their technology goals and build confidence in their careers and their every day lives.",
	"Girl Develop It",
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['networking', 'in-person', 'local', 'non-profit', 'diversity', 'workshops', 'programming support', 'women']
res.save

res = createOrUpdateResource("Girl Geek Dinners",
	"http://girlgeekdinners.com/", 
	"The mission of Girl Geek Dinners is to break down old fashioned social stereotypes, identify routes around barriers to entry for anyone to get into technology, encourage and nurture those interested in technology,  support 	those currently in the industry and work together to figure out the issues and the solutions, and to include men, women and children in this journey."	,
	"Girl Geek Dinners", 
	true)
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['networking', 'global', 'local', 'in-person', 'diversity', 'women']
res.save

res = createOrUpdateResource("Grace Hopper Conference", 
	"http://gracehopper.org/", 
	"The Grace Hopper Celebration of Women in Computing is the World's Largest Gathering of Women Technologists. It is produced by the Anita Borg Institute and presented in partnership with ACM.",
	"Grace Hopper Conference",
	 true)
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['networking', 'conferences', 'open-source', 'local', 'global', 'advocacy', 'workshops', 'women', 'companies', 'supporters']
res.save

res = createOrUpdateResource("Kapor Center", 
	"http://kaporcenter.org/", 
	"The Kapor Center for Social Impact relentlessly pursues creative strategies that will leverage information technology for positive social impact. The Kapor Center primarily works with underrepresented communities, 		focusing on gap-closing endeavors.",
	"Kapor Center", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['social impact', 'African-American', 'Latino/a', 'technology', 'local', 'diversity', 'entrepreneurs', 'women']
res.save

res = createOrUpdateResource("Latinas in STEM", 
	"http://www.latinasinstem.com/", 
	"Latinas in STEM aims to inspire and empower Latinas to pursue, thrive and advance in Science, Technology, Engineering & Mathematics (STEM) fields. The organization offer a variety of programs for youth and adults, and was established by a group of MIT Latina alumnae.",
	"Latinas in STEM", 
	true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['youth programs', 'local', 'STEM', 'Latino/a', 'diversity', 'spanish', 'technology', 'high-school', 'middle-school']
res.save

res = createOrUpdateResource("PowertoFly", 
	"https://www.powertofly.com/", 
	"Focused on getting more women in tech, PowertoFly connect women to jobs that allow for work life balance.",
	"PowertoFly", 
	true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.categories << Category.find_or_create_by(name: 'Working Mothers')
res.tag_list = ['work-life balance', 'working from home', 'flexibility', 'diversity', 'technology', 'hiring', 'companies', 'women', 'job board']
res.save

res = createOrUpdateResource("She++", 
	"http://www.sheplusplus.org/", 
	"she++ seeks to dismantle the untrue stereotype that computer science is not a career for women. she++ works with the technology industry to create a culture that is more appealing to women, and works with women to dismantle harmful perceptions that they cannot succeed in the technology industry.",
	"She++",
	 true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['documentary', 'advocacy', 'ambassadors', 'women', 'conferences', 'movement', 'fellows']
res.save

res = createOrUpdateResource("She++ - Documentary", 
	"https://vimeo.com/63877454",
	"Watch she++, a documentary created by a Stanford community for women in tech. This 12-minute documentary features Stanford students, professors and alumni discussing gender in technical fields.",
	"", 
	true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.date = DateTime.parse('2012-1-1')
res.tag_list = ['documentary', 'advocacy', 'ambassadors', 'women', 'conferences', 'movement', 'fellows']
res.save


res = createOrUpdateResource("Tools For Change",
	"http://www.toolsforchangeinstem.org/", 
	"Tools for Change offers a series of short visual presentations aimed at a variety of audiences for use in different settings. These workshops review all that has been learned about what works and what doesn’t in creating a workplace that doesn’t push women out of the STEM pipeline."	,
	"Tools For Change", 
	true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Research')
res.tag_list = ['science', 'companies', 'women', 'STEM', 'supporters']
res.save

res = createOrUpdateResource("AppCamp4Girls",
	"http://appcamp4girls.com/", 
	"App Camp For Girls is a place where girls can put their creative powers to work, designing and building apps, while learning more about the business of software and being inspired by women mentors in the field."	,
	"AppCamp4Girls", 
	true)
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['technical skills', 'creative skills', 'girls', 'business skills', 'local', 'in-person', 'women', 'supporters', 'middle-school', 'networking', 'mobile development', 'camps']
res.save

res = createOrUpdateResource("Code and Cupcakes",
	"http://codeandcupcakes.net/",
	"This Chicago-based beginning coding workshop for mothers and daughters is led by a professional web designer/developer and her own daughter. Use this site to learn more about the program, or register for a workshop."	,
	"Code and Cupcakes", 
	true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['workshop', 'mothers', 'diversity', 'girls', 'local', 'in-person', 'technical skills']
res.save

res = createOrUpdateResource("Square Code Camp",
	"https://squareup.com/code-camp", 
	"Code camp offers immersive programs that introduce dynamic and diverse high school students to careers in engineering and technology, and help female college students to pursue careers in computer science after college"	,
	"Square Code Camp",
	 true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['free', 'high-school', 'in-person', 'college', 'bootcamp', 'women', 'companies', 'diversity']
res.save

res = createOrUpdateResource("Silicon Valley Code Camp",
	"https://www.siliconvalley-codecamp.com/",
	"Code Camp is a community event where developers learn from fellow developers in the Silicon Valley area."	,
	"Silicon Valley Code Camp",
	 true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['free', 'camp', 'conferences', 'workshops', 'women']
res.save

res = createOrUpdateResource("CodeNow", 
	"http://codenow.org/" ,
	"CodeNow teaches computer programming to underrepresented high school youth. Workshops are held on the weekend at local tech companies, where students receive instruction from industry leading software engineers."	,
	"CodeNow", 
	true)
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['local', 'workshops', 'youth programs', 'high-school', 'minorities', 'diversity', 'free', 'programming support']
res.save

res = createOrUpdateResource("Decoded - Demistifying the Digital World", 
	"http://decoded.com/us/",
	"With locations in London, New York, and Sydney, Decoded offers five core programs in coding. Through these world-class workshops, Decoded aims to transform people’s understanding of the digital world."	,
	"Decoded",
	 true)
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Leadership')
res.tag_list = ['workshops', 'training', 'local', 'in-person', 'technology', 'technical skills']
res.save

res = createOrUpdateResource("Flat Iron School",
	"http://flatironschool.com/", 
	"At two NY based campuses, the Flat Iron School offers Web and iOS Immersive courses that are 12 weeks, full-time, and train people for careers in software development. The school also offer part-time courses, corporate training, and a Pre-College Program for high school students."	,
	"Flat Iron School", 
	true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['high-school', 'corporate training', 'mobile development', 'local', 'in-person', 'technical skills']
res.save

res = createOrUpdateResource("Girls Make Games",
	"http://girlsmakegames.com/",
	"Located in San Jose, CA, Girls Make Games is a series of international summer camps, workshops and game jams designed to inspire the next generation of designers, creators, and engineers."	,
	"Girls Make Games", 
	true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.tag_list = ['local', 'workshops', 'international', 'game jams', 'girls', 'women', 'technical skills', 'creative skills', 'in-person']
res.save

res = createOrUpdateResource("Girls Who Code",
	"http://girlswhocode.com/", 
	"Girls Who Code programs work to inspire, educate, and equip girls with the computing skills to pursue 21st century opportunities.",
	"Girls Who Code", 
	true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['non-profit', 'local', 'women', 'high-school', 'diversity', 'in-person', 'camps', 'girls']
res.save

res = createOrUpdateResource("Iron Hack", 
	"http://ironhack.com/en/", 
	"Comprehensive in-person programming courses for developers and entrepreneurs of all levels"	,
	"Iron Hack",
	 true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['bootcamp', 'in-person', 'local', 'technical skills', 'spanish']
res.save

res = createOrUpdateResource("Ladies Learning Code", 
	"http://ladieslearningcode.com/",  
	"Ladies Learning Code has Chapters across Canada, thriving youth programs called Girls Learning Code and Kids Learning Code. The organization is shaping digital literacy education for adults and youth in Canada.",
	"Ladies Learning Code",
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['workshops', 'local', 'in-person', 'camps', 'after-school programs', 'free', 'paid courses', 'girls']
res.save

res = createOrUpdateResource("Mission Bit", 
	"http://www.missionbit.com/about-us/", 
	"Mission Bit is a non-profit that offers free programming classes taught by experienced engineers and entrepreneurs to San Francisco public school students. Mission Bit provides everything the students need, they just need to show up and be eager to learn."	,
	"Mission Bit",
	 true)
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['free', 'public school', 'in-person', 'local', 'technical skills', 'mobile development']
res.save

res = createOrUpdateResource("TechBridge Girls", 
	"http://www.techbridgegirls.org/",
	"Techbridge inspires girls to discover a passion for technology, science and engineering. Through hands-on learning in a variety of available programs, Techbridge empowers the next generation of innovators and leaders."	,
	"TechBridge Girls", 
	true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['STEM', 'girls', 'resources', 'after-school programs', 'camp', 'local', 'in-person']
res.save

res = createOrUpdateResource("ThoughtSTEM", 
	"http://www.thoughtstem.com/home", 
	"ThoughtSTEM offers expertise in computer science education. Students aged 8-18 can engage in fun projects while becoming expert coders in various locations in California.",
	"ThoughtSTEM", 
	true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Events')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.tag_list = ['after-school programs', 'workshops', 'camps', 'STEM', 'local', 'in-person', 'game development']
res.save

res = createOrUpdateResource("The only bad press is no press: What Ellen Pao's loss means for women", 
	"http://arstechnica.com/tech-policy/2015/04/the-only-bad-press-is-no-press-what-ellen-paos-loss-means-for-women/", 
	"This article provides insight on the verdict of Ellen Pao vs. Kleiner Perkins, and discusses what Pao's loss in the courtroom means for women."	,
	"Ars Technica", 
	true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Fair Pay')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Unconscious Bias')
res.date = DateTime.parse('2015-4-5')
res.tag_list = ['article', 'discrimination lawsuit', 'attrition', 'VCs', 'prmotion']
res.save

res = createOrUpdateResource("U.S. Secretary of Commerce is taking on America's 'skills gap", 
	"http://news.yahoo.com/u-s-secretary-of-commerce-penny-pritzker-talks-to-katie-couric-184604831.html", 
	"Katie Couric investigates America's 'skills gap', and the increasing need for better computer programs in the US."	,
	"Yahoo News", 
	true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.date = DateTime.parse('2015-4-3')
res.tag_list = ['article', 'hiring', 'training', 'technology', 'technical skills']
res.save

res = createOrUpdateResource("Open-source: 10 entry points to tech (for girls, women, and everyone)", 
	"http://opensource.com/life/15/1/10-ways-girls-and-women-can-get-open-source-and-tech", 
	"Here, read ten useful, practical tips for females of any age on how to successfully enter the technology field."	,
	"Opensource.com", 
	true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Mentorship')
res.date = DateTime.parse('2015-1-7')
res.tag_list = ['article', 'open-source', 'women', 'girls']
res.save

res = createOrUpdateResource("Silicon Valley is cool and powerful. But where are the women?", 
	"http://www.theguardian.com/technology/2015/mar/08/sexism-silicon-valley-women", 
	"This article discusses sexism and the dearth of women in tech in the Silicon Valley, and takes a look at what is being done to solve these issues. "	,
	"The Guardian",
	true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-3-8')
res.tag_list = ['article', 'sexism', 'diversity', 'lean in', 'feminism', 'VCs', 'culture', 'workplace', 'startup', 'advice']
res.save

res = createOrUpdateResource("State of girls and women in tech", 
	"http://www.ngcproject.org/statistics", 
	"Here, the National Girls Collaborative Project presents compelling statistics for girls and women in STEM on one page. Statistics include information on K-12 Education, Higher Education, and Workforce and will be updated on a regular basis."	,
	"National Girls Collaborative Project", 
	true)
res.categories << Category.find_or_create_by(name: 'Research')
res.tag_list = ['statistics', 'girls', 'women', 'companies', 'supporters', 'STEM']
res.save

res = createOrUpdateResource("Tech by Superwomen",
	"http://www.techbysuperwomen.com/",
	"In this blog and newsletter, discover and share what's inspiring, motivating and moving women forward in the tech community. ",
	"Tech by Superwomen",
	 true)
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['technology', 'careers', 'diversity', 'women', 'supporters']
res.save

res = createOrUpdateResource("Technology's Man Problem", 
	"http://www.nytimes.com/2014/04/06/technology/technologys-man-problem.html?_r=3", 
	"This article tells the story of Elissa Shevinsky's experience with sexism, and analyzes the impact of gender bias on the tech industry as a whole. "	,
	"The New York Times",
	true)
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2014-4-5')
res.tag_list = ['article', 'sexism', 'women', 'supporters', 'culture', 'workplace', 'startup']
res.save

res = createOrUpdateResource("Anita Borg Institute", 
	"http://anitaborg.org/", 
	"The Anita Borg Institute (ABI) is a social enterprise founded on the belief that women are vital to building technology that the world needs. Wherever you are in your technical career, ABI seeks to help women reach their goals, from building your network to finding inspiration to growing your career."	,
	"Anita Borg Institute", 
	true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Communities')
res.tag_list = ['conferences', 'awards', 'resources', 'grants', 'women', 'companies', 'supporters']
res.save

res = createOrUpdateResource("Catalyst: Gender diverse business roles in the high-tech industry",  
	"http://www.catalyst.org/knowledge/high-potentials-tech-intensive-industries-gender-divide-business-roles", 
	"This report identifies the gender gap women experience working in business roles in tech-intensive industries from day one, uncovers the barriers holding women back and provides insight into why women leave. Finally it provides recommendations on how companies can reverse these trends by attracting and retaining top female talent."	,
	"",
	true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2014-10-23')
res.tag_list = ['gender gap', 'companies', 'women', 'supporters', 'diversity', 'leadership']
res.save

res = createOrUpdateResource("Gender Inclusivity in India", 
	"https://docs.google.com/file/d/0B79UlI0LWGoAbUFGWTNJcXRMRWs/edit", 
	"2008 research by NASSCOM and Mercer India on womenin the IT-BPO industry in India including results of a survey and framework and recommendations for stakeholders.",
	"NASSCOM",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2009-1-1')
res.tag_list = ['India', 'women', 'companies']
res.save

res = createOrUpdateResource("Female Attrition, Retention and Barriers to Careers in SET Academic Research", 
	"https://www.wisecampaign.org.uk/uploads/wise/files/archive/female_attrition__retention_and_barriers_to_careers_report_08_12_09.pdf",  
	"This paper looks at the issues impacting on women‘s career progression in academic research in scientific disciplines, which highlight the continued  importance of positive action to ensure women scientists can achieve their full potential."	,
	"Women in Science and Engineering, UK",
	 true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.date = DateTime.parse('2009-12-8')
res.tag_list = ['science', 'women', 'attrition', 'UK']
res.save


res = createOrUpdateResource("The Mini-Symposium on Women of Color in Science, Technology, Engineering, and Mathematics (STEM): A Summary of Events, Findings, and Suggestions", 
	"https://www.terc.edu/pages/viewpage.action?pageId=3179194", 
	"Summary of Mini-Symposium, including suggestions resulting from the event.",
	"Technical Education Research Center",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2009-10-28')
res.tag_list = ['African-American', 'science', 'STEM', 'equal opportunities', 'women']
res.save

res = createOrUpdateResource("Problem of Attrition in the Software Sector: A Gender based Analysis.", 
	"http://shodhganga.inflibnet.ac.in:8080/jspui/bitstream/10603/8487/13/13_chapter%205.pdf", 
	"Analysis of gender based attrition behavior of IT employees in India.",
	"NASSCOM",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.date = DateTime.parse('2008-1-1')
res.tag_list = ['India', 'attrition', 'women']
res.save

res = createOrUpdateResource("Disappearing Women’: A Study of Women Who Left the UK ICT Sector", 
	"http://www.scielo.cl/pdf/jotmi/v5n1/art08.pdf", 
	"This study draws from 9 autobiographical interviews to explore the reasons for the disporportionate number of women leaving the UK ICT sector."	,
	"Scientific Electronic Library Online", 
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.date = DateTime.parse('2010-5-4')
res.tag_list = ['attrition', 'UK', 'diversity', 'women']
res.save

res = createOrUpdateResource('"Free as in Sexist” Free Culture and the Gender Gap', 
	"http://firstmonday.org/ojs/index.php/fm/article/view/4291/3381", 
	"Despite the values of freedom and openness, the free culture movement’s gender balance is as skewed (or more so) as that of the computing culture from which it arose. Based on the collection and analysis of discourse on gender and sexism within this movement over a six–year period. I suggest three possible causes: (a) some geek identities can be narrow and unappealing; (b) open communities are especially susceptible to difficult people; and, (c) the ideas of freedom and openness can be used to dismiss concerns and rationalize the gender gap as a matter of preference and choice."	,
	"First Monday",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2013-1-7')
res.tag_list = ['gender gap', 'culture', 'women', 'diversity', 'sexism', 'geek']
res.save

res = createOrUpdateResource("Gender and the Games Industry: The Experiences of Female Game Workers", 
	"http://summit.sfu.ca/item/13747", 
	"Thesis studying women working in the video game industry, whether the game industry is a good fit for women, and the mixed signals women receive when working in video games.", 
	"Simon Fraser University, CA", 
	true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2013-2-8')
res.tag_list = ['game development', 'culture', 'diversity', 'workplace', 'women', 'sexism', 'game industry', 'misogyny']
res.save

res = createOrUpdateResource("Entering the Boys’ Club: An Analysis of Female Representation in Game Industry, Culture, and Design", 
	"https://www.ideals.illinois.edu/handle/2142/47355", 
	"Numerous studies have examined the role of gender in game design, game play and game experience and conclude that women are often excluded and objectified in character design, appearance and behavior. However, in the analysis and critique of these findings, there is little to no emphasis on a plan of implementation or suggestions made concerning a change in the approach of stereotypes used in game and character design, sexism in game culture and inclusion of women in STEM related fields. This paper provides insights into the importance of gender roles and character design and representation in video games in relation to creating inclusive gaming environments for women.",
	"DEALS, IL",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.date = DateTime.parse('2014-3-1')
res.tag_list = ['game development', 'culture', 'diversity', 'workplace', 'game industry', 'misogyny', 'women', 'gender stereotypes']
res.save

res = createOrUpdateResource("Making Programming Masculine", 
	"http://onlinelibrary.wiley.com/doi/10.1002/9780470619926.ch6/summary",  
	"Research on the history of the tech industry and how the field began with many women and how things transitioned to the point where people assume it started out as a hyper-masculine field."	,
	"Gender Codes",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2010-8-5')
res.tag_list = ['book', 'culture', 'sexism', 'diversity', 'women', 'supporters']
res.save

res = createOrUpdateResource("A Question of Belonging: Race, Social Fit, and Achievement", 
	"http://gregorywalton-stanford.weebly.com/uploads/4/9/4/4/49448111/walton_&_cohen-a_question_of_belonging.pdf", 
	"Two experiments tested how belonging uncertainty undermines the motivation and achievement of people whose group is negatively characterized in academic settings."	,
	"Stanford.edu",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2007-1-1')
res.tag_list = ['culture', 'social belonging', 'women']
res.save

res = createOrUpdateResource("Asian workers now dominate Silicon Valley tech jobs", 
	"http://www.mercurynews.com/ci_22094415/asian-workers-now-dominate-silicon-valley-tech-jobs", 
	"This article examines recent Census Bureau data that Asian-Americans make up half of the Bay Area's technology workforce."	,
	"San Jose Mercury News", 
	true)
res.categories << Category.find_or_create_by(name: 'Research')
res.date = DateTime.parse('2012-11-30')
res.tag_list = ['Asian-Americans', 'diversity', 'culture', 'workplace', 'workforce']
res.save

res = createOrUpdateResource("GoldieBlox", 
	"http://www.goldieblox.com/", 
	"The goal of GoldieBlox is to get girls building. They aim to disrupt the 'pink aisle' at toy stores and inspire the future generation of female engineers."	,
	"",
	 true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-4-1')
res.tag_list = ['girls', 'toys', 'women']
res.save

res = createOrUpdateResource("GTFO - documentary on female gamers", 
	"http://gtfothemovie.com/", 
	"Sparked by a public display of sexual harassment in 2012, GTFO pries open the video game world to explore a 20 billion dollar industry that is riddled with discrimination and misogyny. In recent years, the gaming community has grown more diverse than ever. This has led to a massive clash of values and women receive the brunt of the consequences every day, with acts of harassment ranging from name calling to cyber vandalism and death threats. Through interviews with video game developers, journalists, and academics, GTFO paints a complex picture of the video game industry, while revealing the systemic and human motivations behind acts of harassment. GTFO is the beginning of a larger conversation that will shape the future of the video game world."	,
	"",
	 true)
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-2-3')
res.tag_list = ['game development', 'documentary', 'sexual harassment', 'culture', 'misogyny', 'game industry']
res.save

res = createOrUpdateResource("GTFO - documentary on female gamers", 
	"http://bitchmagazine.org/post/new-documentary-gtfo-focuses-on-female-gamers",
	"This article discusses 'GTFO', a documentary that shines a light on the misogyny of the video game industry."	,
	"Bitch Media",
	 true)
res.categories << Category.find_or_create_by(name: 'Gaming')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2015-5-5')
res.tag_list = ['article', 'game development', 'misogyny', 'culture', 'game industry']
res.save

res = createOrUpdateResource("Hello Ruby", 
	"http://www.helloruby.com/", 
	"Hello Ruby is a whimsical way to learn about technology, computing and coding. The book is available to the public beginning in Fall 2015, and the story will continue with an app."	,
	"Hello Ruby",
	 true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['Ruby', 'technology', 'book', 'girls']
res.save

res = createOrUpdateResource("How to be a woman programmer", 
	"http://www.nytimes.com/2013/05/19/opinion/sunday/how-to-be-a-woman-programmer.html", 
	"Ellen Ullman documents the challenges of being a female programmer."	,
	"The New York Times", 
	true)
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.date = DateTime.parse('2013-5-18')
res.tag_list = ['article', 'motivation', 'advice', 'women', 'supporters']
res.save

res = createOrUpdateResource("Kodable", 
	"https://www.kodable.com/", 
	"Computer programming curriculum for elementary children."	,
	"Kodable", 
	 true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.tag_list = ['curriculum', 'elementary school', 'online', 'paid courses', 'online classes']
res.save

res = createOrUpdateResource("Lady Loves Code", 
	"http://www.ladylovescode.com/",
	"LLC is a fast growing blog, podcast, forum, and weekly Twitter chat for female developers and allies. They encourage inclusiveness and ensure beginners feel welcome and supported."	,
	"Lady Loves Code",
	 true)
res.categories << Category.find_or_create_by(name: 'Communities')
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['women', 'supporters', 'allies', 'twitter chat', 'technology', 'diversity']
res.save

res = createOrUpdateResource("Minority Tech", 
	"http://www.MinorityTech.com", 
	"Anjuan Simmons explores the answer to this question in Minority Tech: Journaling Through Blackness and Technology. The book is an essay anthology of the author's online and print works organized around the themes of Blackness, technology, diversity, and our collective humanity."	,
	"Minority Tech",
	 true)
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ['African-American', 'diversity', 'book', 'minorities']
res.save

res = createOrUpdateResource("Miss Possible", 
	"http://www.bemisspossible.com/", 
	"Miss Possible makes sure all girls have access to strong, successful female role models by showing girls real women who did great things."	,
	"Miss Possible",
	 true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.tag_list = ['girls', 'role models', 'toys']
res.save

res = createOrUpdateResource("Model View Culture", 
	"https://modelviewculture.com/", 
	"Model View Culture is an independent media platform covering technology, culture and diversity. It aims to present compelling cultural and social critique, highlight the work and achievement of diverse communities in tech, and explore the use of technology for social justice."	,
	"Model View Culture",
	 true)
res.categories << Category.find_or_create_by(name: 'Women Blogs')
res.tag_list = ['article', 'women', 'social justice', 'diversity', 'technology']
res.save

res = createOrUpdateResource("Mother Coders", 
	"http://www.mothercoders.org/",
	"MotherCoders is a non-profit that helps moms on-ramp to careers in technology. They offer a tech orientation program that provides on-site childcare for moms who want to learn basic computer programming, expand their understanding of the technology landscape, and network with peers and industry professionals.",
	"Mother Coders", 
	true)
res.categories << Category.find_or_create_by(name: 'Jobs')
res.categories << Category.find_or_create_by(name: 'Working Mothers')
res.tag_list = ['non-profit', 'women', 'mothers', 'technology', 'networking', 'interviewing', 'careers']
res.save

res = createOrUpdateResource("National Center for Women & Information Technology", 
	"https://www.ncwit.org/", 
	"The National Center for Women & Information Technology (NCWIT) is a non-profit community of more than 600 universities, companies, non-profits, and government organizations nationwide working to increase women’s participation in computing and technology. NCWIT equips change leaders with resources for taking action in recruiting, retaining, and advancing women from K–12 and higher education through industry and entrepreneurial careers."	,
	"NCWIT",
	 true)
res.categories << Category.find_or_create_by(name: 'Research')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.categories << Category.find_or_create_by(name: 'Retaining Women')
res.tag_list = ['resources', 'women', 'companies', 'supporters', 'hiring', 'technology']
res.save

res = createOrUpdateResource("National Girls Collaborative Project", 
	"http://www.ngcproject.org/", 
	"The vision of the NGCP is to bring together organizations throughout the United States that are committed to informing and encouraging girls to pursue careers in science, technology, engineering, and mathematics (STEM)."	,
	"", 
	true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Events')
res.tag_list = ['girls', 'STEM', 'gender equality', 'workshops', 'in-person', 'resources']
res.save

res = createOrUpdateResource("CODE: Debugging the Gender Gap", 
	"http://codedocumentary.com/", 
	"CODE documentary exposes the dearth of American female and minority software engineers and explores the reasons for this gender gap and digital divide. The film highlights breakthrough efforts that are producing more diverse programmers and shows how this critical gap can be closed. CODE asks: what would society gain from having more women and minorities code and how do we get there?",
	"CODE Documentary",
	 true)
res.categories << Category.find_or_create_by(name: 'Podcasts/Videos')
res.categories << Category.find_or_create_by(name: 'Gender Discrimination')
res.categories << Category.find_or_create_by(name: 'Coding')
res.date = DateTime.parse('2015-4-19')
res.tag_list = ['documentary', 'gender gap', 'women', 'companies', 'supporters', 'diversity', 'technology']
res.save

res = createOrUpdateResource("Imposter Syndrome",
	"https://counseling.caltech.edu/general/InfoandResources/Impostor", 
	"General definition and information on the Imposter Syndrome, provided by the Caltech Counseling Center.", 
	"Caltech",
	 true)
res.categories << Category.find_or_create_by(name: 'Imposter Syndrome')
res.categories << Category.find_or_create_by(name: 'Career Advancement')
res.tag_list = ["advice", "social", "women", "supporters", "careers", "interviewing"]
res.save

res = createOrUpdateResource("Tynker",
	"https://www.tynker.com/", 
	"Makes learning to code fun and easy -- at home, school, after school and camps. Tynker offers interactive courses for children to learn programming at their own pace at home as well as a grade based curriculum for schools.", 
	"Caltech",
	true)
res.categories << Category.find_or_create_by(name: 'Kids')
res.categories << Category.find_or_create_by(name: 'Learning')
res.categories << Category.find_or_create_by(name: 'Coding')
res.categories << Category.find_or_create_by(name: 'Gaming')
res.tag_list = ["online classes", "curriculum", "game development", "projects", "middle-school", "on-demand"]
res.save

