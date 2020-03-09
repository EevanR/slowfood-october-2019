Feature: User can delete items from order
  As a owner,
  In order to keep my menu up to date
  I would like to be able to delete items from it

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
    And I click on "Delete Item"
    Then I should see "Item has been removed from menu."
    Then there should be 0 items on menu