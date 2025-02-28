/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`I should be navigate to product details`, () => {
	cy.get('.inventory_details').should("be.visible")
});

When(`I click Add To Cart button in inventory detail page`, () => {
	cy.clickButton("#add-to-cart")
});

When(`I click remove button in inventory detail page`, () => {
	cy.clickButton(".btn_inventory")
});

When(`Add to cart button should be appear in inventory detail page`, () => {
	cy.buttonShouldAppear(".btn_inventory", "Add to cart")
});

When(`Remove Button should be appear in inventory detail page`, () => {
	cy.buttonShouldAppear(".btn_inventory", "Remove")
});

When(`I click checkout button in inventory detail page`, () => {
	cy.clickButton("#checkout")
});