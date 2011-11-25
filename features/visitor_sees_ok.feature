Feature: Visitor sees "ok!"
  Being a visitor
  I want to see "ok!"
  In order to be happy

  @javascript
  Scenario: Visit an index page
    When I visit an index page
    Then I should see "ok!"
