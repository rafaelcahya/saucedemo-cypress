/// <reference types="cypress" />
import { Given, When } from "@badeball/cypress-cucumber-preprocessor";

const url = "https://www.saucedemo.com/"

Given(`I navigate to the SauceDemo login Page`, () => {
	cy.visit(url);
});

When(`I fill the username {string}`, (username) => {
	cy.inputForm("#user-name", username)
});

When(`I fill the empty username`, () => {
	cy.inputEmptyForm("#user-name")
});

When(`I fill the password {string}`, (password) => {
	cy.inputForm("#password", password)
});

When(`I fill the empty password`, () => {
	cy.inputEmptyForm("#password")
});

When(`I click the login button`, () => {
	cy.clickButton("#login-button")
});

When(`Validation message should be appear {string}`, (validationMessage) => {
	cy.messageShouldAppear(".error-message-container h3", validationMessage)
});