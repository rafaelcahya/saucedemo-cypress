@checkout @regression
Feature: SauceDemo - Checkout Success

Background: Pre Conditions
    Given I navigate to the SauceDemo login Page
    When I fill the username "standard_user"
    And I fill the password "secret_sauce"
    And I click the login button

	Scenario: Verify Add To Cart From Inventory Page
	And I click Add To Cart button in inventory page
	And I click cart button
	Then Product should be in the cart

	Scenario: Verify Remove Button is Appear After Add To Cart From Inventory Page
	And I click Add To Cart button in inventory page
	Then Remove Button should be appear in inventory page

	Scenario: Verify badge is Appear After Add To Cart From Inventory Page
	And I click Add To Cart button in inventory page
	Then Badge in the cart should be appear

	Scenario: Verify Add To Cart From Inventory Detail Page
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	Then Product should be in the cart

	Scenario: Verify Remove Button is Appear After Add To Cart From Inventory Detail Page
	And I click a product
	And I click Add To Cart button in inventory detail page
	Then Remove Button should be appear in inventory detail page

	Scenario: Verify badge is Appear After Add To Cart From Inventory Detail Page
	And I click a product
	And I click Add To Cart button in inventory detail page
	Then Badge in the cart should be appear

	Scenario: Verify Success Checkout
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the firstname in checkout information "test"
	And I fill the lastname in checkout information "test"
	And I fill the postal code in checkout information "test"
	And I click continue button in checkout information
	And I click finish button in checkout overview
	Then Success Message should be appear

	Scenario: Verify Inventory is Removed After Successfully Checkout
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the firstname in checkout information "test"
	And I fill the lastname in checkout information "test"
	And I fill the postal code in checkout information "test"
	And I click continue button in checkout information
	And I click finish button in checkout overview
	And I click cart button
	Then Cart should be empty