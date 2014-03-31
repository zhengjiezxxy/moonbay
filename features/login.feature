Feature: Authentication (No Web Steps, Declarative)
  As A User
    In order to have personal recommendation articles
    I want to be able to login and logout

Scenario: Logging in
    Given I have a valid account
    Then I should be able to login

Scenario: Login failure
    Given I don't have a valid account
    Then I shouldn't be able to login
