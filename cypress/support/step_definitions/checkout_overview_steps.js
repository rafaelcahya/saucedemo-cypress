/// <reference types="cypress" />
import { When } from "@badeball/cypress-cucumber-preprocessor";

When(`I click cancel button in checkout overview`, () => {
    cy.clickButton("#cancel");
});

When(`I click finish button in checkout overview`, () => {
    cy.clickButton("#finish");
});

When(`I should be navigate to checkout overview page`, () => {
    cy.shouldNavigateTo("/checkout-step-two.html");
});
