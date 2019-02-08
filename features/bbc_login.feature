Feature: BBC LOGIN

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account

  Scenario: Inputting incorrect username and short password shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input short password details
    When I try to login
    Then I receive an error for password being too short

  Scenario: Inputting incorrect username and only letters password shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input only letters password details
    When I try to login
    Then I receive an error for password being only letters

  Scenario: Inputting incorrect username and only numbers password shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input only numbers password details
    When I try to login
    Then I receive an error for password being only numbers

  Scenario: Inputting incorrect username and a password with quotes shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password that contains a quote
    When I try to login
    Then I receive an error for password having quotes

  Scenario: Selecting sumbit when username and password are empty shows an error
    Given I access the bbc login page
    When I try to login
    Then I receive an error for missing email
    And I receive an error for missing password
    And I receive an error for not correct details

  Scenario: Selecting sumbit when username is wrong and password is empty shows an error
    Given I access the bbc login page
    And I input incorrect username details
    When I try to login
    Then I receive an error for not correct details
    And I receive an error for missing password

  Scenario: Selecting sumbit when username is empty and password is wrong shows an error
    Given I access the bbc login page
    And I input incorrect password details
    When I try to login
    Then I receive an error for not correct details
    And I receive an error for missing email