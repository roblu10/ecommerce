# Project Details

The project was created using the Gherkin domain-specific language to describe the tests, the Ruby language to run the commands, Capybara and RSpec test frameworks to facilitate test automation.

The hr-test-web-shop folder has gemfile and gemfile.lock files, which are responsible for controlling project dependencies.

In the hr-test-web-shop > tests > features folder there are four folders:

* Page: This folder contains the files that map the elements of each page of the site

* Specs: This folder contains the files that describe the tests.

* Step_definitions: This folder contains the files that are responsible for running the tests.

* Support: This folder contains the file responsibles for setting up the environment.


## Instalation ##

### Windows ###
1. Install Ruby with DevKit [Ruby](https://rubyinstaller.org/downloads/)
2. Open the CMD, run the command **gem install bundler** 


### Mac ###
The Mac already has Ruby installed and so you just need to update it.

1. To install Homebrew open the Terminal and run the command 
**ruby -e "$(curl -fssl https://raw.githubusercontent.com/homebrew/install/ master/install)"**

2. To install Rbenv open the Terminal and run the command **brew install rbenv ruby-build**

3. Open the Terminal and run the commands **echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile**

4. Open the Terminal and run the command: **source ~/.bash_profile**

5. Open the Terminal and run the command **gem install bundler**


## Run the test ##
1. Access the hr-test-web-shop folder by CMD or Terminal
2. Run the **bundle update** command to update the project's dependencies
3. After access the project **tests** folder by CMD or Terminal
4. Run the **cucumber** command to run all tests or run the command **cucumber --tags @tag_name** to run a specific test