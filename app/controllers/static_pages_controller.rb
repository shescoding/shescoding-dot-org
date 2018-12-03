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
          name: "Brenda Stensland",
          title: "Project Quality Assurance",
          imageUrl: "team/brenda.jpeg",
          linkedInUrl: "https://www.linkedin.com/in/brendastensland/",
          description: "Brenda is currently a Lead SDET at Starbucks. She has worked 25 years as SQA and her past lives inlcude QA Manager/QA Director @ HMH, Xerox, Nortel, Scholastic,Pearson, RoomsToGo, Outback, Boeing to small startups. She is also a Certified Scrum Master, long time ago ISQA certified, organizer of the Seattle SQA Meetup, and loves WWE and Performance Testing."
      },
      {
          name: "Aeone Singson",
          title: "Seattle Chapter Lead",
          imageUrl: "team/aeone.jpeg",
          linkedInUrl: "https://www.linkedin.com/in/aeone/",
          description: "Aeone is a Software engineer at Microsoft through the apprentice pathway. She is very passionate about spreading technology and education access."
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
      }
    ]
  end
  
end
