Feature: User can edit items from menu
  As a owner,
  In order to keep my menu up to date
  I would like to be able to update item information

  Background:
    Given the following products exist:
      | category | name      | description  | price |
      | Starter  | Starter 1 | First course | 99    |

    And the following owner exist
      | email          | password |
      | owner@mail.com | password |

    And I am on the owner sign-in page

  Scenario: Successfully
    And I fill in "Email" with "owner@mail.com"
    And I fill in "Password" with "password"
    And I click on "Log in"
    And I click on "Update Item"
    And I fill in "Name" with "Vegan Burger"
    And I click on "Submit Product"
    Then I should see "Item has been updated."
    And I should see "Vegan Burger"
