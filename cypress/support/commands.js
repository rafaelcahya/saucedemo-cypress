Cypress.Commands.add('clickButton', (selector) => {
	cy.get(selector).click()
})

Cypress.Commands.add('inputForm', (selector, value) => {
	cy.get(selector).type(value)
})

Cypress.Commands.add('inputEmptyForm', (selector, value) => {
	cy.get(selector).clear()
})

Cypress.Commands.add('messageShouldAppear', (selector, message) => {
	cy.get(selector).should("contain.text", message)
})

Cypress.Commands.add('shouldNavigateTo', (url) => {
	cy.url().should('include', url)
})

Cypress.Commands.add('buttonShouldAppear', (selector, buttonName) => {
	cy.get(selector).contains(buttonName)
})