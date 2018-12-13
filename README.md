# [She's Coding](http://shescoding.org)

This is the code for the [shescoding.org](http://shescoding.org) website.

### About *She's Coding*

*She's Coding* is an open-source website project currently under development in cooperation with the documentary film [CODE: Debugging the Gender Gap](http://www.codedoc.co/). She’s Coding is meant to serve as the destination for anyone who wants to learn more about the gender gap problem in computer science and become part of the solution.

**Open-source?**

Yes! *She's Coding* is built by the community, for the community. We currently have a small group of volunteers bootstrapping the project, and we are in the process of defining some simple rules on how to contribute for the wider community.

[Let us know](mailto:info@shescoding.org) if you want to join our team!

### Installation

#### Mac OSX: Install [Homebrew](http://brew.sh/):

  ```
  $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

+ Set the [Ruby](https://www.ruby-lang.org/en/) version to 2.3.1. In order to be able to pick the ruby version or to download ruby, we recommend using a ruby version manager. There are 2 ruby version management tools: [rvm](https://rvm.io/) and [rbenv](https://github.com/rbenv/rbenv).

    ##### **RVM**
    ##### Installing **rvm** from scratch:

	+ Install [rvm](https://rvm.io/):
      ```
      $ \curl -sSL https://get.rvm.io | bash -s stable
      ```

	+ Install [Ruby](https://www.ruby-lang.org/en/):
      ```
      $ rvm install 2.3.1
      ```

	+ Select this version of ruby for use in this project:
      ```
      $ rvm use 2.3.1
      ```

    ##### Set ruby version if you already have rvm installed:
    + Select this version for use:

      ```
      $ rvm use 2.3.1
      ```

    ##### **RBENV**
    ##### Installing **rbenv** from scratch:
    + Install [rbenv](https://github.com/rbenv/rbenv):
      ```
      $ brew install rbenv
      ```

	+ Install [Ruby](https://www.ruby-lang.org/en/):
      ```
      $ rbenv install 2.3.1
      ```

	+ Check ruby version:
      ```
      $ ruby -v
      ```
   	You should see ruby version printed as result: `ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]`


   ##### Set ruby version if you already have rbenv installed:
   + Change your ruby version locally inside shescoding-dot-org repository:

      ```
      $ cd shescoding-dot-org
      $ rbenv local 2.3.1
      ```

---

+ Install [Postgresql](http://www.postgresql.org/)
  + Mac:

    Install:
    ```
    $ brew install postgresql
    ```

    Initialize the postgres database:
    ```
    $ initdb /usr/local/var/postgres
    ```

    Start the postgres server:
    ```
    $ pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
    ```

  + Ubuntu:

    See [https://help.ubuntu.com/community/PostgreSQL]

    For simple setup (local use only) follow the "Alternate Server Setup" of the resource provided above.

---

+ Set up the database

    ```
    $ createdb shescoding_development
    $ psql -d shescoding_development -c "CREATE USER shescoding WITH PASSWORD 'shescoding'"
    $ psql -d shescoding_development -c "GRANT ALL PRIVILEGES ON DATABASE shescoding_development to shescoding"
    ```
---
+ Set up your local repo

  + Fork the repository by hitting the "Fork" button on the shescoding github page.
  + Clone the repository:

    ```
    $ git clone https://github.com/shescoding/shescoding-dot-org.git
    ```
  + Add the upstream repository:

    ```
    $ git remote add upstream https://github.com/shescoding/shescoding-dot-org.git
    ```

+ To complete installation, skip past the directions for Windows 10 [here](#mac,-ubuntu,-and-windows)
---
---
---
  #### Windows 10 Users: Using the Ubuntu: App

  Go to [Windows App Store](https://www.microsoft.com/store/productId/9PJN388HP8C9) and download the most stable version of Ubuntu, then

    + Go to developer settings by searching "Developer"

    + In the results under *Settings*, click  *For developer settings*

    + Select *Developer Mode*

  Open the Ubuntu app and complete setup (username, password, etc.), then run:

  ```
  $ sudo apt-get update
  ```
+ Install Ruby

  After update completes, install Ruby, your version manager, and Rails as you would for Ubuntu:

  (NOTE: the below command also installs dependencies such as nodejs and yarn)

  ```
  $ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
  ```
+ Install RVM or RBENV

  #### RVM
  ```
  $ sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

  $ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

  $ curl -sSL https://get.rvm.io | bash -s stable
  $ source ~/.rvm/scripts/rvm

  $ rvm install 2.3.1
  $ rvm use 2.3.1 --default
  $ ruby -v
  ```
  #### RBENV

  ```
  $ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  $ exec $SHELL

  $ git clone https://github.com/rbenv/ruby-build.git  ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  exec $SHELL

  $ rbenv install 2.3.1
  $ rbenv global 2.3.1
  $ ruby -v
  ```
+ Upload SSH Key to Github

  +  Generate an SSH key for your github account

      ```
      $ ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"
      ```
  + Open the file containing the key from your Windows folder below:

    ```
    C:\Users\YourWindowsUserName\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu16.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\YourUbuntuUserName\.ssh
    ```
   + Open *id_rsa.pub* with either notepad or notepad++.

   + Copy everything in that file and set up your key in your [github page](https://github.com/settings/keys).
---
  + Install [Postgresql](http://www.postgresql.org/)

      (NOTE: Google Chrome will block these downloads for security reasons. Please download using Firefox or Edge)

      Install postgres from [EnterpriseDB](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)

      Set up your **username** and **password** defaults. You will not need to set up a specialized name or password when developing in Windows, but you will need to add these to the **database.yml** file later.

      Install PGAdmin4 with postgres in the installer, or download manually from [PGAdmin for Windows](https://www.pgadmin.org/download/pgadmin-4-windows/)
---
+ Set up the Database

    Run PGAdmin4

    +  If PGAdmin4 will not run, try the following:

        Clear all Roaming Data:

        ```
        C:\Users\YourUserName\AppData\Roaming\pgAdmin
        ```
        Download [Oracle](https://www.oracle.com/technetwork/java/javase/downloads/index.html) Java and set up the [evironment variable path](https://www.addictivetips.com/windows-tips/set-path-environment-variables-in-windows-10/)

        ```
        C:\Program Files (x86)\Common Files\Oracle\Java\javapath
        ```

    Once PGAdmin4 is running, click on your servers, right click on *PostreSQL*, hover over *Create*, and then click *Database*

    Type *shescoding_development* in the *Database* field and select the owner. I recommend using your general postgres user

+ Set up your local repo

  + Open your Ubuntu for Windows Application

  + Change your directory to your Windows location, such as Desktop

    ```
    $ cd /mnt/c/users/YourWindowsUserName/desktop
    ```

  + You can see the Ubuntu file directory if you wish, but it is not necessary unless you need to copy your SSH Keys for Github or other repositories

    ```
    C:\Users\YourWindowsUserName\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu16.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\YourUbuntuUserName
    ```
  + Now clone the repository

    ```
    $ git clone https://github.com/shescoding/shescoding-dot-org.git
    ```
  + Add the upstream repository:

    ```
    $ git remote add upstream https://github.com/shescoding/shescoding-dot-org.git
    ```
  + Change the directory to your development environment

  ```
  $ cd shescoding-dot-org
  ```
  + Open your database.yml file and make the following changes
    + Under **default: &default**

    ```
    host: localhost
    ```

    + Under **development:**

    ```
    username: YourPostGresUserName
    password: YourPostGresPassword
    ```
+ **With PGAdmin4 still running**, complete setup by following the steps [below](#mac,-ubuntu,-and-windows).
---
---
---

#### Mac, Ubuntu, and Windows

+ Load all the gems:
  ```
  $ bundle install
  ```

+ Run database migrations:
  ```
  $ rake db:migrate
  ```

+ Seed the database:
  ```
  $ rake db:seed
  ```

+ Start the Rails server:
  ```
  $ rails s
  ```

+ Visit the project at [localhost:3000](http://localhost:3000)

### Pre-commit hook

Please do not commit and push directly to the master branch! The hooks/pre-commit file in this repository contains a pre-commit hook that warns you if you are checking directly into master. In order to enable this hook, from the root of the repo do:
```
$ cp hooks/pre-commit .git/hooks/
$ chmod +x .git/hooks/pre-commit
```

### Running the tests

In order to run the tests, make sure all the gems are installed and the test environment is set up properly with working database.

+ Set up:

```
$ bundle install
$ bundle exec rake db:create RAILS_ENV=test
$ bundle exec rake db:schema:load RAILS_ENV=test
```

+ Run the tests with [RSpec Rails](https://github.com/rspec/rspec-rails):

```
$ bundle exec rspec -fd
```

Notes:
+ ```-fd``` stands for full details. You can also run tests by using commands ```bundle exec rspec``` or ```bundle exec rake``` to get an overview without details of each test.
+ If you are having trouble running bundle install, please make sure Nokogiri gem is installed on your machine. Full instructions can be found [here](http://www.nokogiri.org/tutorials/installing_nokogiri.html).
