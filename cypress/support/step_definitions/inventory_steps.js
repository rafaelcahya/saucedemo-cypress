/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`I should be navigate to the inventory page`, () => {
	cy.url().should('include', '/inventory.html')
});

When(`I click a product`, () => {
	cy.get(".inventory_item").then(($items) => {
		const randomIndex = Math.floor(Math.random() * $items.length);
		cy.wrap($items[randomIndex])
		  .find(".inventory_item_name")
		  .click();
	  });
});

When(`I click Add To Cart button in inventory page`, () => {
	cy.get(".btn_inventory").then(($buttons) => {
		const randomIndex = Math.floor(Math.random() * $buttons.length);
		cy.wrap($buttons[randomIndex]).click();
	  });
});

When(`Remove Button should be appear in inventory page`, () => {
	cy.buttonShouldAppear(".btn_inventory", "Remove")
});

When(`I should be navigate to inventory page`, () => {
	cy.shouldNavigateTo('/inventory.html')
});
