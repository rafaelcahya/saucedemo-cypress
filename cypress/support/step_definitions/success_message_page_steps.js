/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`Success Message should be appear`, () => {
	cy.messageShouldAppear(".complete-header", "Thank you for your order!")
});