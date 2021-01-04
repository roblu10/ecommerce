@signup_legal_entity
Feature: Sign up a new legal entity user
    In order to start the sign up a new legal entity user in HomeRefill
    As an unsign up user
    I want to fill in all the required fields to become a signed up user

Background: 
Given I am on the Cadastro page

@signup_legal_entity_failed_invalid_data
Scenario Outline: Invalid data when trying to sign up
When I click on the Pessoa Jurídica button
And I fill in the legal entity Email field "<email>"
And I fill in the legal entity Senha field "<password>"
And I fill in the legal entity Razão Social field "<social_name>"
And I fill in the legal entity CNPJ field "<cnpj>"
And I fill in the legal entity Inscrição Estadual field "<state_tax_number>"
And I fill in the legal entity Telefone field "<phone_1>"
And I fill in the legal entity Telefone Secundário field "<phone_2>"
Then I should see the verification message "<verification_message>"

Examples:
    | email                 | password | social_name | cnpj               | state_tax_number | phone_1     | phone_2     | verification_message                                                                |
    | testemailinator.com   | 123      | TestePJ     | 50.906.187/0001-65 | 361015580116     | 1987654321  | 11923456789 | Este campo deve ser um email válido.                                                |
    | teste@mailinator.com  | 12       | TestePJ     | 50.906.187/0001-65 | 361015580116     | 1987654321  | 11923456789 | Este campo é pequeno demais. Ele deveria ter 3 caracteres ou mais.                  |
    | teste@mailinator.com  | 123      | TestePJ     | 30.292.03          | 361015580116     | 1987654321  | 11923456789 | Este campo é pequeno demais. Ele deveria ter 14 caracteres ou mais.\nCPNJ inválido. |
    | teste@mailinator.com  | 123      | TestePJ     | 46.306.260/3243-34 | 361015580116     | 1987654321  | 11923456789 | CPNJ inválido.                                                                      |
    | teste@mailinator.com  | 123      | TestePJ     | 50.906.187/0001-65 | 23479            | 1987654321  | 11923456789 | O tamanho deste campo é inválido. Ele deveria ter entre 12 e 12 caracteres.         |
    | teste@mailinator.com  | 123      | TestePJ     | 50.906.187/0001-65 | 361015580116     | 11111111111 | 11923456789 | Número de telefone inválido.                                                        |
    | teste@mailinator.com  | 123      | TestePJ     | 50.906.187/0001-65 | 361015580116     | 393483      | 11923456789 | Este campo é pequeno demais. Ele deveria ter 10 caracteres ou mais.                 |
    | teste@mailinator.com  | 123      | TestePJ     | 50.906.187/0001-65 | 361015580116     | 1987654321  | 11111111111 | Número de telefone inválido.                                                        |
    | teste@mailinator.com  | 123      | TestePJ     | 50.906.187/0001-65 | 361015580116     | 1987654321  | 234353      | Este campo é pequeno demais. Ele deveria ter 10 caracteres ou mais.                 |

@signup_legal_entity_email_already_used_failed
Scenario: Failed to sign up (email already used)
When I click on the Pessoa Jurídica button
And I fill in the legal entity Email field "teste@hotmail.com"
And I fill in the legal entity Senha field "123"
And I fill in the legal entity Razão Social field "TestePJ"
And I fill in the legal entity CNPJ field "50.906.187/0001-65"
And I fill in the legal entity Inscrição Estadual field "361015580116"
And I fill in the legal entity Telefone field "1987654321"
And I fill in the legal entity Telefone Secundário field "11923456789"
And I fill in the Buscar Endereço field "Rua 25 de março, 753"
And I select the first address
And I click on the Continuar button
Then I should see the verification message "Este valor já está sendo usado."

@signup_legal_entity_name_invalid_failed
Scenario: Failed to sign up (invalid name)
When I click on the Pessoa Jurídica button
And I fill in the legal entity Email field "random_email"
And I fill in the legal entity Senha field "123"
And I fill in the legal entity Razão Social field "T"
And I fill in the legal entity CNPJ field "50.906.187/0001-65"
And I fill in the legal entity Inscrição Estadual field "361015580116"
And I fill in the legal entity Telefone field "1987654321"
And I fill in the legal entity Telefone Secundário field "11923456789"
And I fill in the Buscar Endereço field "Rua 25 de março, 753"
And I select the first address
And I click on the Continuar button
Then I should see the verification message "Este valor é muito curto. Deve ter 2 caracteres ou mais."

@signup_legal_entity_successful
Scenario: Successful sign up
When I click on the Pessoa Jurídica button
And I fill in the legal entity Email field "random_email"
And I fill in the legal entity Senha field "123"
And I fill in the legal entity Razão Social field "TestePJ"
And I fill in the legal entity CNPJ field "50.906.187/0001-65"
And I fill in the legal entity Inscrição Estadual field "361015580116"
And I fill in the legal entity Telefone field "1987654321"
And I fill in the legal entity Telefone Secundário field "11923456789"
And I fill in the Buscar Endereço field "Rua 25 de março, 753"
And I select the first address
And I click on the Continuar button
Then I confirm that I am on the Pagamento page

@signup_legal_entity_successful_complete
Scenario: Successful sign up (complete)
Then I register the legal entity data