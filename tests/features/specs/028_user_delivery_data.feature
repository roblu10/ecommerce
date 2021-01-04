@user_delivery_data
Feature: Access the delivery data
    In order to change my delivery data
    As an signed up user
    I want to access my delivery data and changed it

Background:
Given I am on the Dashboard page
When I click on the Dados de Entregas button

@user_delivery_data_failed_change_data
Scenario: Failed to change my delivery data
And I change the delivery data "Avenida República Argentina"
And I select the first address
Then I should see the verification message "O HomeRefill ainda não está disponível para este endereço."

@user_delivery_data_change_data_successful
Scenario: Change my delivery data
And I change the delivery data "Avenida Amador Bueno da Veiga, 1973"
And I select the first address
And I change the address complement "Ao lado da Caixa Econômica Federal."
And I change the address reference "Eu sou uma referência."
And I click on the Salvar Alterações button 
And I should see the verification message "Seus dados de entrega foram alterados com sucesso."
Then I confirm that all delivery data has been changed

@user_delivery_data_change_data_successful_complete
Scenario: Change my delivery data successful (complete)
Then I change the delivery data and I confirm that it has been changed