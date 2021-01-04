@signup_financial_credit_card
Feature: Register a credit card
    In order to register a card to make the refill payment
    As an signed up user
    I want to register a credit card and become a new customer

@signup_financial_individual_register_credit_card_failed
Scenario Outline: Invalid credit card data
Given I am on the Individual Pagamento page
And I confirm individual user data
And I fill in the Número do Cartão field "<card_number>"
And I fill in the Nome Impresso no Cartão field "<holder_name>"
And I select the card flag "<flag>"
And I fill in the CVV field "<cvv>"
And I select the expiration month "<month>"
And I select the expiration year "<year>"
And I check the terms and conditions
Then I should see the verification message "<verification_message>"

Examples:
    | card_number         | holder_name | flag       | month | year | cvv | verification_message                                                                                 |
    | 3846 3894           | TestePF     | Visa       | 03    | 2030 | 123 | Este campo é pequeno demais. Ele deveria ter 14 caracteres ou mais.\nEste valor parece ser inválido. |
    | 3846 3894 4313 4433 | TestePF     | Mastercard | 03    | 2030 | 123 | Este valor parece ser inválido.                                                                      |
    | 3700 0000 0000 002  | TestePF     | Amex       | 03    | 2030 | 737 | Este valor parece ser inválido.                                                                      |
    
@signup_financial_individual_register_credit_card_failed_II
Scenario Outline: Invalid credit card data II
Given I am on the Individual Pagamento page
And I confirm individual user data
And I fill in the Número do Cartão field "<card_number>"
And I fill in the Nome Impresso no Cartão field "<holder_name>"
And I select the card flag "<flag>"
And I fill in the CVV field "<cvv>"
And I select the expiration month "<month>"
And I select the expiration year "<year>"
And I check the terms and conditions
When I click on the Salvar button
Then I should see the verification message "<verification_message>"

Examples:
    | card_number         | holder_name | flag       | month | year | cvv | verification_message                                                                                 |
    | 3600 6666 3333 44   | Tes         | Diners     | 03    | 2030 | 737 | Este valor é muito curto. Deve ter 4 caracteres ou mais.                                             |
    | 6011 6011 6011 6611 | 940498434   | Discover   | 03    | 2030 | 737 | Não foi possível verificar esse cartão.                                                              |
    | 5066 9911 1111 1118 | TestePF     | Elo        | 01    | 2020 | 737 | Não foi possível verificar esse cartão.                                                              |

@signup_financial_individual_register_credit_card_successful
Scenario: Register credit card successful
Given I am on the Individual Pagamento page
And I confirm individual user data
And I fill in the Número do Cartão field "4111 1111 1111 1111"
And I fill in the Nome Impresso no Cartão field "TestePF"
And I select the card flag "Visa"
And I fill in the CVV field "737"
And I select the expiration month "03"
And I select the expiration year "2030"
And I check the terms and conditions
When I click on the Salvar button
Then I should see the verification message "Compra concluída."

@signup_financial_legal_entity_register_credit_card_successful
Scenario: Register credit card successful
Given I am on the Legal Entity Pagamento page
And I confirm legal entity user data
And I fill in the Número do Cartão field "5101 1800 0000 0007"
And I fill in the Nome Impresso no Cartão field "TestePJ"
And I select the card flag "Mastercard"
And I fill in the CVV field "737"
And I select the expiration month "03"
And I select the expiration year "2030"
And I check the terms and conditions
When I click on the Salvar button
Then I should see the verification message "Compra concluída."

@signup_financial_individual_register_credit_card_successful_complete
Scenario: Register credit card successful (complete)
Then I register the credit card of the individual

@signup_financial_legal_entity_register_credit_card_successful_complete
Scenario: Register credit card successful (complete)
Then I register the credit card of the legal entity