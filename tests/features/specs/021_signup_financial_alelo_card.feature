@signup_financial_alelo_card
Feature: Register a alelo card
    In order to register a card to make the refill payment
    As an signed up user
    I want to register a alelo card and become a new customer

@signup_financial_individual_register_alelo_card_failed
Scenario: Invalid alelo card data
Given I am on the Individual Pagamento page
And I confirm individual user data
And I click on the Cartão Alelo button
And I fill in the Número do Cartão Alelo field "3846 3894"
And I fill in the Nome Impresso no Cartão Alelo field "TestePF"
And I fill in the CVV field of the alelo card "123"
And I select the expiration month of the alelo card "03"
And I select the expiration year of the alelo card "2030"
And I check the terms and conditions alelo card
Then I should see the verification message "Este campo é pequeno demais. Ele deveria ter 14 caracteres ou mais."

@signup_financial_individual_register_alelo_card_successful
Scenario: Register alelo card successful
Given I am on the Individual Pagamento page
And I confirm individual user data
And I click on the Cartão Alelo button
And I fill in the Número do Cartão Alelo field "5066 9911 1111 1118"
And I fill in the Nome Impresso no Cartão Alelo field "TestePF"
And I fill in the CVV field of the alelo card "737"
And I select the expiration month of the alelo card "03"
And I select the expiration year of the alelo card "2030"
And I check the terms and conditions alelo card
When I click on the Salvar button
Then I should see the verification message "Compra concluída."

@signup_financial_legal_entity_register_alelo_card_successful
Scenario: Register alelo card successful
Given I am on the Legal Entity Pagamento page
And I confirm legal entity user data
And I click on the Cartão Alelo button
And I fill in the Número do Cartão Alelo field "5066 9911 1111 1118"
And I fill in the Nome Impresso no Cartão Alelo field "TestePJ"
And I fill in the CVV field of the alelo card "737"
And I select the expiration month of the alelo card "03"
And I select the expiration year of the alelo card "2030"
And I check the terms and conditions alelo card
When I click on the Salvar button
Then I should see the verification message "Compra concluída."

@signup_financial_individual_register_alelo_card_successful_complete
Scenario: Register alelo card successful (complete)
Then I register the alelo card of the individual

@signup_financial_legal_entity_register_alelo_card_successful_complete
Scenario: Register alelo card successful (complete)
Then I register the alelo card of the legal entity