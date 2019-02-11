Feature: hooks and tags

  As a user I wish to see how cucumber uses tags and hooks

  Scenario: Check for name
    Given I have a before hook in place
    Then I can validate the information in the before hook

  @test2
  Scenario: An example of using tags
    Given I use a tag
    Then only this test will run