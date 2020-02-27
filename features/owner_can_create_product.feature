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

    And I am on the owner sign-in page

  Scenario: Successfully add menu item
    And I fill in "Email" with "greta@greta.com"
    And I fill in "Password" with "password"
    And I click on "Log in"
    Then I should be on the landing page
    And I should see "Welcome greta@greta.com"
    And I click on "Add Menu Item"
    And I fill in "Name" with "Vegan Burger"
    And I fill in "Description" with "No meat! All flavor!"
    And I fill in "Price" with 149
    And I fill in "Category" with "Main"
    And I click on "Add product"
    Then I should be on the landing page
    And I should see "Product added to menu."