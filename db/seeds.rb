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
