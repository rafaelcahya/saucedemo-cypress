@checkout @regression

Feature: SauceDemo - Remove Inventory

Background: Pre Conditions
    Given I navigate to the SauceDemo login Page
    When I fill the username "standard_user"
    And I fill the password "secret_sauce"
    And I click the login button

	Scenario: Verify Removing Item from Inventory Details Page After Adding It from Inventory Details Page
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click remove button in inventory detail page
	Then Add to cart button should be appear in inventory detail page

	Scenario: Verify Removing Item from Cart Page After Adding It from Inventory Page
	And I click Add To Cart button in inventory page
	And I click cart button
	And I click remove button in cart page
	Then Cart should be empty