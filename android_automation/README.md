# Android Monefy automation

## Frameworks
- Appium
- Cucumber
### Language
- Ruby

### Why 
[Appium](https://appium.io) is an open source test automation framework for use with native,  hybrid and mobile web apps. Supports different languages and has a very large comunity.
[Cucumber](https://cucumber.io) is an open-source software testing tool written in Ruby. It enables you to write test cases that anyone can easily understand regardless of their technical knowledge.
## Setup
These tests was ran with ruby 2.6.3

How to setup a macOS machine:


- install bundler gem:

`gem install bundler`

- install node to be able to install appium via npm

`brew install node`

`npm install appium -g`

- run bundle install on the android_automation project home, to install the tests dependencies

`bundle install`

## run tests and generate report
`bundle exec cucumber -p report`

the report will be created on `reports/`path

### run tests by priority
The tests has tags according to its priority
To run a high, medium or low priority, use:
`bundle exec cucumber -p high_priority`

`bundle exec cucumber -p medium_priority`

`bundle exec cucumber -p low_priority`

the report will be created on `reports/`path
