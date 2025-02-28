@checkoutInformation @regression
Feature: SauceDemo - Checkout Information

Background: Pre Conditions
    Given I navigate to the SauceDemo login Page
    When I fill the username "standard_user"
    And I fill the password "secret_sauce"
    And I click the login button

	Scenario: Verify Checkout Without Firstname
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the empty firstname in checkout information
	And I fill the lastname in checkout information "test"
	And I fill the postal code in checkout information "123123"
	And I click continue button in checkout information
	Then Validation message should be appear in checkout information "Error: First Name is required"

	Scenario: Verify Checkout Without Lastname
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the firstname in checkout information "test"
	And I fill the empty lastname in checkout information
	And I fill the postal code in checkout information "123123"
	And I click continue button in checkout information
	Then Validation message should be appear in checkout information "Error: Last Name is required"

	Scenario: Verify Checkout Without Postal Code
	And I click a product
	And I click Add To Cart button in inventory detail page
	And I click cart button
	And I click checkout button in inventory detail page
	And I fill the firstname in checkout information "test"
	And I fill the lastname in checkout information "test"
	And I fill the empty postal code in checkout information
	And I click continue button in checkout information
	Then Validation message should be appear in checkout information "Error: Postal Code is required"