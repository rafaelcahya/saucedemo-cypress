/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`I fill the firstname in checkout information {string}`, (firstname) => {
	cy.inputForm("#first-name", firstname)
});

When(`I fill the empty firstname in checkout information`, () => {
	cy.inputEmptyForm("#first-name")
});

When(`I fill the lastname in checkout information {string}`, (lastname) => {
	cy.inputForm("#last-name", lastname)
});

When(`I fill the empty lastname in checkout information`, () => {
	cy.inputEmptyForm("#last-name")
});

When(`I fill the postal code in checkout information {string}`, (postalcode) => {
	cy.inputForm("#postal-code", postalcode)
});

When(`I fill the empty postal code in checkout information`, () => {
	cy.inputEmptyForm("#postal-code")
});

When(`I click continue button in checkout information`, () => {
	cy.clickButton("#continue")
});

When(`I click cancel button in checkout information`, () => {
	cy.clickButton("#cancel")
});

When(`Validation message should be appear in checkout information {string}`, (validationMessage) => {
	cy.messageShouldAppear(".error-message-container h3", validationMessage)
});