@user_personal_data
Feature: Access the personal data
    In order to change my personal data
    As an signed up user
    I want to access my personal data and changed it

Background:
Given I am on the Dashboard page
When I click on the Dados Pessoais button

@user_personal_data_failed_change_data
Scenario Outline: Failed to change my personal data
And I change the personal name "<personal_name>"
And I change the identification "<id>"
And I change the birthdate "<birthdate>"
And I change the first phone number "<phone1>"
And I change the second phone number "<phone2>"
And I change the profile "<profile>"
Then I should see the verification message "<verification_message>"

Examples:
    | personal_name  | id             | birthdate  | phone1     | phone2      | profile | verification_message                                                                                                |
    | MeuNomeMudou   | 962.874        | 30/01/1975 | 1987654321 | 11923456789 | Casal   | Este campo é pequeno demais. Ele deveria ter 11 caracteres ou mais.\nCPF inválido.                                  |
    | MeuNomeMudou   | 962.874.665-30 | 30/01/1975 | 1987654321 | 11923456789 | Casal   | CPF inválido.                                                                                                       |
    | MeuNomeMudou   | 529.910.680-78 | 17/0       | 1987654321 | 11923456789 | Casal   | Este campo é pequeno demais. Ele deveria ter 8 caracteres ou mais.\nEste valor parece ser inválido.\nData inválida. |
    | MeuNomeMudou   | 529.910.680-78 | 17/05/4000 | 1987654321 | 11923456789 | Casal   | Este valor parece ser inválido.                                                                                     |
    | MeuNomeMudou   | 529.910.680-78 | 30/01/1975 | 111111111  | 11923456789 | Casal   | Este campo é pequeno demais. Ele deveria ter 10 caracteres ou mais.\nNúmero de telefone inválido.                   |
    | MeuNomeMudou   | 529.910.680-78 | 30/01/1975 | 1987654321 | 111111111   | Casal   | Este campo é pequeno demais. Ele deveria ter 10 caracteres ou mais.\nNúmero de telefone inválido.                   |

@user_personal_data_failed_change_data_II
Scenario: Failed to change my personal data II
And I change the personal name "M"
And I change the identification "529.910.680-78"
And I change the birthdate "30/01/1975"
And I change the first phone number "1987654321"
And I change the second phone number "11923456789"
And I change the profile "Casal"
And I click on the Salvar Alterações button 
Then I should see the verification message "Este valor é muito curto. Deve ter 2 caracteres ou mais."

@user_personal_data_change_data_successful
Scenario: Change my personal successful
And I change the personal name "MeuNomeMudou"
And I change the identification "529.910.680-78"
And I change the birthdate "30/01/1975"
And I change the first phone number "1987654321"
And I change the second phone number "11923456789"
And I change the profile "Casal"
And I click on the Salvar Alterações button 
And I should see the verification message "Seus dados cadastrais foram alterados com sucesso."
Then I confirm that all personal data has been changed

@user_personal_data_change_data_successful_complete
Scenario: Change my personal successful (complete)
Then I change the personal data and I confirm that it has been changed