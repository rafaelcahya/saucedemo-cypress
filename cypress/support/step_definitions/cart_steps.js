/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`Product should be in the cart`, () => {
	cy.get('.cart_item').should("be.visible")
});

When(`I click remove button in cart page`, () => {
	cy.clickButton(".cart_button")
});

When(`Cart should be empty`, () => {
	cy.get('.cart_item').should("not.exist")
});

When(`I should be navigate to cart page`, () => {
	cy.shouldNavigateTo('/cart.html')
});