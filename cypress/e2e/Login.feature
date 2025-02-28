@login @regression @authentication
Feature: SauceDemo - Login Page

Background: Pre conditions
    Given I navigate to the SauceDemo login Page

  Scenario: Verify Login With Valid Credential
    When I fill the username "standard_user"
    And I fill the password "secret_sauce"
    And I click the login button
    Then I should be navigate to the inventory page

  Scenario: Verify Login With Locked Out Credential
    When I fill the username "locked_out_user"
    And I fill the password "secret_sauce"
    And I click the login button
    Then Validation message should be appear "Epic sadface: Sorry, this user has been locked out."

  Scenario: Verify Login With Empty Username
    When I fill the empty username
    And I fill the password "secret_sauce"
    And I click the login button
    Then Validation message should be appear "Epic sadface: Username is required"

  Scenario: Verify Login With Empty Password
    When I fill the username "standard_user"
    And I fill the empty password
    And I click the login button
    Then Validation message should be appear "Epic sadface: Password is required"

  Scenario: Verify Login With Invalid Credential
    When I fill the username "cahya_user"
    And I fill the password "cahyacahya"
    And I click the login button
    Then Validation message should be appear "Epic sadface: Username and password do not match any user in this service"
