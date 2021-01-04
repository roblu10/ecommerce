@user_financial_data
Feature: Access the financial data
    In order to change my financial data
    As an signed up user
    I want to access my financial data and changed it

Background:
Given I am on the Dashboard page
When I click on the Dados Financeiros button

@user_financial_data_failed_credit_card
Scenario Outline: Invalid credit card data
And I click on the Alterar button
And I change the card number "<card_number>"
And I change the holder name "<holder_name>"
And I change the card flag "<flag>"
And I change the CVV "<cvv>"
And I change the expiration month "<month>"
And I change the expiration year "<year>"
Then I should see the verification message "<verification_message>"

Examples:
    | card_number         | holder_name  | flag       | month | year | cvv | verification_message                                                                                 |
    | 4673 9847           | MeuNomeMudou | Visa       | 10    | 2020 | 123 | Este campo é pequeno demais. Ele deveria ter 14 caracteres ou mais.\nEste valor parece ser inválido. |
    | 8374 0944 2873 2773 | MeuNomeMudou | Mastercard | 03    | 2030 | 123 | Este valor parece ser inválido.                                                                      |
    | 3700 0000 0000 002  | MeuNomeMudou | Amex       | 03    | 2030 | 737 | Este valor parece ser inválido.                                                                      |

@user_financial_data_failed_credit_card_II
Scenario Outline: Invalid credit card data II
And I click on the Alterar button
And I change the card number "<card_number>"
And I change the holder name "<holder_name>"
And I change the card flag "<flag>"
And I change the CVV "<cvv>"
And I change the expiration month "<month>"
And I change the expiration year "<year>"
When I click on the Salvar button
Then I should see the verification message "<verification_message>"

Examples:
    | card_number         | holder_name  | flag       | month | year | cvv | verification_message                                     |
    | 3600 6666 3333 44   | Meu          | Diners     | 03    | 2030 | 737 | Este valor é muito curto. Deve ter 4 caracteres ou mais. |
    | 6445 6445 6445 6445 | 940498434    | Discover   | 03    | 2030 | 737 | Não foi possível verificar esse cartão.                  |
    | 5066 9911 1111 1118 | MeuNomeMudou | Elo        | 01    | 2020 | 737 | Não foi possível verificar esse cartão.                  |

@user_financial_data_credit_card_successful
Scenario: Change credit card successful
And I click on the Alterar button
And I change the card number "3700 0000 0000 002"
And I change the holder name "MeuNomeMudou"
And I change the card flag "Amex"
And I change the CVV "7373"
And I change the expiration month "03"
And I change the expiration year "2030"
When I click on the Salvar button
Then I should see the verification message "Seus dados financeiros foram alterados com sucesso."

@user_financial_data_credit_card_successful_complete
Scenario: Change credit card successful (complete)
Then I change the financial data and I confirm that it has been changed

@user_financial_data_failed_alelo_card
Scenario: Invalid alelo card data
And I click on the Alterar button
And I click on the Cartão Alelo button
And I change the card number "8321 7392"
And I change the holder name "MeuNomeMudou"
And I change the CVV "387"
And I change the expiration month "12"
And I change the expiration year "2030"
Then I should see the verification message "Este campo é pequeno demais. Ele deveria ter 14 caracteres ou mais."

@user_financial_data_alelo_card_successful
Scenario: Change alelo card successful
And I click on the Alterar button
And I click on the Cartão Alelo button
And I change the card number "5066 9911 1111 1118"
And I change the holder name "MeuNomeMudou"
And I change the CVV "737"
And I change the expiration month "03"
And I change the expiration year "2030"
When I click on the Salvar button
Then I should see the verification message "Seus dados financeiros foram alterados com sucesso."