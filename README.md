# Welcome to She's Coding, the website for the new documentary CODE. 

Install Homebrew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install Ruby:
```
brew install ruby
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

Clone the repository:
```
git clone https://github.com/shescoding/shes-coding.git
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




