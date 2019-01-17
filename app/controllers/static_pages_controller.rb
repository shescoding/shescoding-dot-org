class StaticPagesController < ApplicationController
  def front_page
  end

  def about
  end

  def how
  end

  def blog
  end

  def team
    # User Agents found at https://deviceatlas.com/blog/list-of-user-agent-strings
    # For a general blog of user agents, refer to https://deviceatlas.com/blog/mobile-browser-user-agent-strings
    # Please update any mobile-based user agents using this array.
    # You do not need the complete user-agent, just the unique identifying name i.e. Android

    @mobileUserAgents = [ #Add any new strings that are found in mobile user agents here
        "Android",
        "webOS",
        "iPhone",
        "iPad",
        "iPod",
        "BlackBerry",
        "Windows Phone",
        "Opera Mini"
    ]
    @userAgentString = @mobileUserAgents.join("|")
    @regex = Regexp.new @userAgentString
    @userAgent = request.headers['User-Agent']
    @isMobile = !!@userAgent.match(/#{@regex}/i)  #This will return true if user is on mobile device

    @teamMembers = [
        {
            name: "Nathalie Steinmetz",
            title: "Founder & CEO",
            imageUrl: "team/nathalie.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/nathaliesteinmetz/"
        },
        {
            name: "Miki Hobgood",
            title: "Leadership Team",
            imageUrl: "team/mikki.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/mikihobgood/",
            description: "Miki is a Software Engineer in the security space dedicated to bridging gaps - especially in communication and gender equality."
        },
        {
            name: "Anna Krupp",
            title: "Lead Engineer",
            imageUrl: "team/annak.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/anna-krupp/",
            description: "Anna loves writing code, dogs and good old French wine. Sommelier turned Software Engineer, she believes that diversity in tech is the key to a better future."
        },
        {
            name: "Aeone Singson",
            title: "Seattle Chapter Lead",
            imageUrl: "team/aeone.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/aeone/",
            description: "Aeone is a Software engineer at Microsoft through the apprentice pathway. She is very passionate about spreading technology and education access."
        },
        {
            name: "Pamela Rodríguez Domínguez",
            title: "Mock Interview & Event Organizer",
            imageUrl: "team/pamela.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/pamelardz/",
            description: "Pam is a front-end developer and UX designer that loves to teach and share with others when she's not drawing or playing with her dog. She has 9 years of experience but has been coding since she was a teen."
        },
        {
            name: "Christina Yuen",
            title: "Code-a-thon & Workshop Organizer",
            imageUrl: "team/christina.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/ceyuen/",
            description: "Christina loves to solve problems and learn new things. She transitioned from mechanical design engineering to software engineering and is excited to encourage more diversity in engineering."
        },
        {
            name: "Liya Kurkov",
            title: "Blogger",
            imageUrl: "team/liya.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/liyakurkova/",
            description: "Liya is a QA Engineer by day and a book connoisseur by night. She is inspired by the many paths taken by women who build careers in tech, and is helping to share their stories on the She’s Coding blog."
        },
        {
            name: "Kelli Blalock",
            title: "Social Media & Contributor",
            imageUrl: "team/kelli.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/kelliblalock/",
            description: "Kelli has a BS degree in Computer Information Systems and comes to software development from a background working for HP in IT Services. She enjoys learning new technologies and sharing her knowledge with others."
        },
        {
            name: "Brenda Stensland",
            title: "Project Quality Assurance",
            imageUrl: "team/brenda.jpeg",
            linkedInUrl: "https://www.linkedin.com/in/brendastensland/",
            description: "Brenda is currently a Lead SDET at Starbucks. She has worked 25 years as SQA and her past lives inlcude QA Manager/QA Director @ HMH, Xerox, Nortel, Scholastic,Pearson, RoomsToGo, Outback, Boeing to small startups. She is also a Certified Scrum Master, long time ago ISQA certified, organizer of the Seattle SQA Meetup, and loves WWE and Performance Testing."
        },
        {
            name: "Porsha Robinson",
            title: "Contributor",
            imageUrl: "team/porsha.png",
            linkedInUrl: "https://www.linkedin.com/in/robinsonporsha/",
            description: "Porsha is a Software Engineer with a background in Computer Networking and Information Systems Security. Coding is her passion and she is an advocate for getting more women into STEM."
        }
    ]
    @pastContributors = [
        {
            name: "Staci Hartman",
            title: "Advisor",
            imageUrl: "team/staci.png",
            linkedInUrl: "https://www.linkedin.com/in/staci-hartman-6a414712/",
        },
        {
            name: "Kamila Stępniowska",
            title: "Advisor",
            imageUrl: "team/kamila.png",
            linkedInUrl: "https://www.linkedin.com/in/kamilastepniowska/"
        },
        {
            name: "Mark S. Lee",
            title: "Advisor",
            imageUrl: "team/mark.png",
            linkedInUrl: "https://www.linkedin.com/in/markslee/"
        },
        {
            name: "Paul Watts",
            title: "Advisor",
            imageUrl: "team/paul.png",
            linkedInUrl: "https://www.linkedin.com/in/paulcwatts/"
        },
        {
            name: "Britt Griffith",
            title: "Initial project co-founder",
            imageUrl: "team/britt.png",
            linkedInUrl: "https://www.linkedin.com/in/brittrgriffith/"
        },
        {
            name: "Bri Dotson",
            title: "Contributor",
            imageUrl: "team/bri.png",
            linkedInUrl: "https://www.linkedin.com/in/bri-dotson/"
        },
        {
            name: "Tina Kumar",
            title: "Contributor",
            imageUrl: "team/tina.png",
            linkedInUrl: "https://www.linkedin.com/in/tinakumar/"
        },
        {
            name: "Anna Billmaier",
            title: "Contributor",
            imageUrl: "team/anna.png",
            linkedInUrl: "http://www.annabillmaier.com/about/"
        },
        {
            name: "Steph Gentry",
            title: "Contributor",
            imageUrl: "team/steph.png",
            linkedInUrl: "https://www.linkedin.com/in/sgent487/"
        },
        {
            name: "Ben Demboski",
            title: "Contributor",
            imageUrl: "team/ben.png",
            linkedInUrl: "https://www.linkedin.com/in/bendemboski/"
        },
        {
            name: "Calla Patel",
            title: "Contributor",
            imageUrl: "team/calla.png",
            linkedInUrl: "https://www.linkedin.com/in/callapatel/"
        },
        {
            name: "Deirdre Allison",
            title: "Contributor",
            imageUrl: "team/deirdre.png",
            linkedInUrl: "https://www.linkedin.com/in/deirdreallison/"
        },
        {
            name: "Kavita Sachdeva",
            title: "Contributor",
            imageUrl: "team/kavita.png",
            linkedInUrl: "https://www.linkedin.com/in/kavitasa/"
        },
        {
            name: "Kristina Hjertberg",
            title: "Contributor",
            imageUrl: "team/kristina.png",
            linkedInUrl: "https://www.linkedin.com/in/khjrtbrg/"
        },
        {
            name: "Marge Rosen",
            title: "Contributor",
            imageUrl: "team/marge.png",
            linkedInUrl: "https://www.linkedin.com/in/margerosen/"
        },
        {
            name: "Rachel Adler",
            title: "Contributor",
            imageUrl: "team/rachel.png",
            linkedInUrl: "https://www.linkedin.com/in/rmoshier/"
        }
    ]
  end

end
