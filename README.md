# [She's Coding](http://shescoding.org)

This is the code for the [shescoding.org](http://shescoding.org) website.

### About *She's Coding*

*She's Coding* is an open-source website project currently under development in cooperation with the documentary film [CODE: Debugging the Gender Gap](http://www.codedoc.co/). She’s Coding is meant to serve as the destination for anyone who wants to learn more about the gender gap problem in computer science and become part of the solution.

**Open-source?**

Yes! *She's Coding* is build by the community, for the community. We currently have a small group of volunteers bootstrapping the project, and we are in the process of defining some simple rules on how to contribute for the wider community.

[Let us know](mailto:nathalie@joltlabs.com) if you want to join our team! 

### Installation

Install Homebrew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install rvm:
```
\curl -sSL https://get.rvm.io | bash -s stable
```

Install Ruby:
```
rvm install 2.2.1
```

Select this version for use:
```
rvm use 2.2.1
```

Install Rails:
```
gem install rails 
```

Install Postgresql:
```
brew install postgresql
```

Initialize the postgres database:
```
initdb /usr/local/var/postgres
```

Start the postgres server:
```
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
```

Set up the database:
```
$ createdb shescoding
$ psql -d shescoding -c "CREATE USER shescoding WITH PASSWORD 'shescoding'"
$ psql -d shescoding -c "GRANT ALL PRIVILEGES ON DATABASE shescoding to shescoding"
```

Clone the repository:
```
git clone https://github.com/shescoding/shescoding-dot-org.git
```

Load all the gems: 
```
bundle install
```

Run database migrations:
```
rake db:migrate
```

Start the Rails server:
```
rails s
```
The project should be running on port 3000




