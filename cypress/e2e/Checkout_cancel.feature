@checkout @regression
Feature: SauceDemo - Checkout Cancel

Background: Pre Conditions
    Given I navigate to the SauceDemo login Page
    When I fill the username "standard_user"
    And I fill the password "secret_sauce"
    And I click the login button

	Scenario: Verify Cancel Checkout From Checkout Information
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the firstname in checkout information "test"
	And I fill the lastname in checkout information "test"
	And I fill the postal code in checkout information "test"
	And I click cancel button in checkout information
	Then I should be navigate to cart page

	Scenario: Verify Cancel Checkout From Checkout Overview
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the firstname in checkout information "test"
	And I fill the lastname in checkout information "test"
	And I fill the postal code in checkout information "test"
	And I click continue button in checkout information
	And I click cancel button in checkout overview
	Then I should be navigate to inventory page