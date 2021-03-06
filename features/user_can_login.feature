Feature: User can log in
  As a user
  In order to access my account
  I would like to be able to log in

  Background:
    Given the following user exist:
      | email         | password |
      | user@user.com | password |
    And I am on the landing page

  Scenario: Successfully creates a login
    When I click on "Login"
    And I fill in "Email" with "user@user.com"
    And I fill in "Password" with "password"
    And I click on "Log in"
    Then I should be on the landing page
    And I should see "Logout"

  Scenario:Unsuccessful login(Sad path-wrong email)
    When I click on "Login"
    And I fill in "Email" with "wrongemail@user.com"
    And I fill in "Password" with "password"
    And I click on "Log in"
    Then I should see "Invalid Email or password"      

  Scenario:Unsuccessful login(Sad path-wrong password)
    When I click on "Login"
    And I fill in "Email" with "user@user.com"
    And I fill in "Password" with "wrongpassword"
    And I click on "Log in"
    Then I should see "Invalid Email or password"          