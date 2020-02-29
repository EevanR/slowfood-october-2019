Feature: User can delete items
  As a user,
  In order to correct order mistakes
  I would like to be able to delete items from my cart

  Background:
    Given the following products exist:
      | category | name          | description   | price |
      | Starter  | Starter 1     | First course  | 99    |
      | Main     | Main Course 1 | Second course | 150   |
      | Dessert  | Dessert 1     | Last course   | 39    |

    And the following users exist
      | email               | password |
      | hungry_guy@mail.com | password |

    And I'm logged in as "hungry_guy@mail.com"

    And the following product has been added to order
      | name      |
      | Starter 1 |  

    And I am on the landing page

  Scenario: Successfully
    When I click on "Review your order:"
    Then I should see "Starter 1"
    And I click on "Delete Item"
    Then I should see "Item has been removed from cart."
    And cart should be empty