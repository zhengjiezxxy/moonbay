Feature: manage resources
  As a administrator, I want to:
    manage(new,edit,delete,view) all articles
    new,edit,delete,view all users

Scenario: manage articles
  Given I am logined in as administrator
  Then I can manage articles

Scenario: manage users
  Given I am logged in as administrator
  Then I can manage users

  
