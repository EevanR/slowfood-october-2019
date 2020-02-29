Feature: Owner can log in
  As a restaurant owner,
  In order to make updates to my restaurant page
  I would like to be able to log in and access my restaurant page

  Background:
    Given the following owner exist:
      | email           | password |
      | greta@greta.com | password |
    And I am on the owner sign-in page

  Scenario: Successfully performs a login
    And I fill in "Email" with "greta@greta.com"
    And I fill in "Password" with "password"
    And I click on "Log in"
    Then I should be on the landing page
    And I should see "Welcome Owner: greta@greta.com"