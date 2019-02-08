# Web-Testing-Cucumber

## Description 
This project 

## Gems Required
* Capybara
* RSpec
* Cucumber

## Clone repo 
`git clone https://github.com/hibs28/Web-Testing-Cucumber.git`

## How to use 
1. In the feature file called `bbc_login.feature` create a scenario when a user inputs there login details using Gherkin Syntax (*Given, When, Then*). 

```  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account

```
2. Run Cucumber in terminal. It should come up with:

```
You can implement step definitions for undefined steps with these snippets:

Given("I input only letters password details") do
  pending # Write code here that turns the phrase above into concrete actions
end
```
Add this to `bbc_login_step_defs.rb`. This is where you will create your tests for the site. 

3. For a new page you will need to create a `.rb` file in page. (For each page you will the either `require` or `require_relative`)

4. You can create methods of how you would want to retrieve those elements using Capybara. 

5. In the superclass `bbc_site` you will need to call the page you created ` BBCSignInPage.new`.

6. Then you can test them in `bbc_login_site`. Enter the required methods by calling the instance of the superclass `@bbc_site`. 

```
Given("I access the bbc login page") do
  @bbc_site = BBCSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_login_button
end

Given("I input incorrect username details") do
  @bbc_site.sign_in_page.fill_in_email_field('apple1997@banana.com')
end

Given("I input incorrect password details") do
  @bbc_site.sign_in_page.fill_in_password_field('apple378')
end

When("I try to login") do
  @bbc_site.sign_in_page.click_submit_button  
end

Then("I receive an error for not finding the account") do
  expect(@bbc_site.sign_in_page.error_account_message_box).to eql @bbc_site.sign_in_page.account_error
end
```

7. Run cucumber to see if the tests has passed or failed. 

--------------------------------------------------------------------------------------------------------------------------

### Tests that will occur: 

```
  Scenario: Inputting incorrect username and credentials shows an error

  Scenario: Inputting incorrect username and short password shows an error

  Scenario: Inputting incorrect username and only letters password shows an error

  Scenario: Inputting incorrect username and only numbers password shows an error

  Scenario: Inputting incorrect username and only numbers password shows an error

  Scenario: Selecting sumbit when username and password are empty shows an error

  Scenario: Selecting sumbit when username is wrong and password is empty shows an error

  Scenario: Selecting sumbit when username is empty and password is wrong shows an error

```
