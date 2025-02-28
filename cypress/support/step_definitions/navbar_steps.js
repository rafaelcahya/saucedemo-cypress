/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`I click cart button`, () => {
	cy.clickButton("#shopping_cart_container")
});

When(`Badge in the cart should be appear`, () => {
	cy.get('.shopping_cart_badge').should("be.visible")
});
