# Web-Testing-Cucumber

# Description 
This project 

# Gems Required
* Capybara
* RSpec
* Cucumber

# Clone repo 
`git clone https://github.com/hibs28/Web-Testing-Cucumber.git`

# How to use 

1. In the feature file called `bbc_login.feature` create a scenario when a user inputs there login details using Gherkin Syntax (*Given, When, Then*). 

```  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account

```
2. Run Cucumber in terminal. It should come up with 

```
You can implement step definitions for undefined steps with these snippets:

Given("I input only letters password details") do
  pending # Write code here that turns the phrase above into concrete actions
end
```
Add this to bbc_login_step_defs.rb. This is where you will create your tests for the site. 

3. For a new page you will need to create a `.rb` file in page.

4. 