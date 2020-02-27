Feature: Owner can create products
  As a restaurant owner,
  In provide good service
  I would like to be able to update my menu

  Background:
    Given the following owner exist:
      | email           | password |
      | greta@greta.com | password |

    Given the following categories exist:
      | name    |
      | Starter |
      | Main    |
      | Dessert |

    And I'm logged in as "greta@greta.com"
    And I am on the landing page

  Scenario: Successfully performs a login
    And I click on "Add Item"
    And I fill in "Name" with "Vegan Burger"
    And I fill in "Description" with "No mean! All flavor!"
    And I fill in "Price" with 149
    And I fill in "Category" with 2