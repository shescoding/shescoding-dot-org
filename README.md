# [She's Coding](http://shescoding.org)

This is the code for the [shescoding.org](http://shescoding.org) website.

### About *She's Coding*

*She's Coding* is an open-source website project currently under development in cooperation with the documentary film [CODE: Debugging the Gender Gap](http://www.codedoc.co/). She’s Coding is meant to serve as the destination for anyone who wants to learn more about the gender gap problem in computer science and become part of the solution.

**Open-source?**

Yes! *She's Coding* is build by the community, for the community. We currently have a small group of volunteers bootstrapping the project, and we are in the process of defining some simple rules on how to contribute for the wider community.

[Let us know](mailto:nathalie@shescoding.org) if you want to join our team!

### Installation

+ Install [Homebrew](http://brew.sh/) (OSX):
  ```
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

+ Install [rvm](https://rvm.io/):
  ```
  \curl -sSL https://get.rvm.io | bash -s stable
  ```

+ Install [Ruby](https://www.ruby-lang.org/en/):
  ```
  rvm install 2.2.1
  ```

+ Select this version for use:
  ```
  rvm use 2.2.1
  ```

+ Install [Postgresql](http://www.postgresql.org/)
  + Mac:

    Install:
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

  + Ubuntu:

    See [https://help.ubuntu.com/community/PostgreSQL]

    For simple setup (local use only) follow the "Alternate Server Setup" of the
resource provided above.

+ Set up the database:
  ```
  $ createdb shescoding_development
  $ psql -d shescoding_development -c "CREATE USER shescoding WITH PASSWORD 'shescoding'"
  $ psql -d shescoding_development -c "GRANT ALL PRIVILEGES ON DATABASE shescoding_development to shescoding"
  ```

+ Set up your local repo
  + Fork the repository by hitting the "Fork" button on the shescoding github page
  + Clone the repository:

    ```
    git clone https://github.com/<your_github_username>/shescoding-dot-org.git
    ```
  + Add the upstream repository:

    ```
    git remote add upstream https://github.com/shescoding/shescoding-dot-org.git
    ```

+ Load all the gems:
  ```
  bundle install
  ```

+ Run database migrations:
  ```
  rake db:migrate
  ```

+ Start the Rails server:
  ```
  rails s
  ```

+ Visit the project at [localhost:3000](http://localhost:3000)

### Pre-commit hook

Please do not commit and push directly to the master branch! The hooks/pre-commit file in this repository contains a pre-commit hook that warns you if you are checking directly into master. In order to enable this hook, from the root of the repo do:
```
cp hooks/pre-commit .git/hooks/
chmod +x .git/hooks/pre-commit
```



