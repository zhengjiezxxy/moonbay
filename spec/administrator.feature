Feature: add a administrator
  there exists only a adminitrator who can
      new,edit,delete,view all articles
      new,edit,delete,view all users

  Background: 
    Given a global administrator named "zhengjie"

  Scenario: new articles
    When I am logged in as "zhengjie"
    Then I can new a article

  Scenario: edit articles
    When I am logged in as "zhengjie"
    Then I can edit a article

  
