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

  Scenario: Selecting sumbit when username and password are empty shows an error
    Given I access the bbc login page
    When I try to login
    Then I receive an error for missing email
    And I receive an error for missing password
    And I receive an error for not correct details