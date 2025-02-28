@inventory @regression
Feature: SauceDemo - Inventory Page

Background: Pre Conditions
    Given I navigate to the SauceDemo login Page
    When I fill the username "standard_user"
    And I fill the password "secret_sauce"
    And I click the login button

	Scenario: Verify Navigate to Product Details on Clicking Product
	And I click a product
	Then I should be navigate to product details