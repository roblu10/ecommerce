@signup_individual
Feature: Sign up a new individual user
    In order to start the sign up a new individual user in HomeRefill
    As an unsign up user
    I want to fill in all the required fields to become a signed up user

Background: 
Given I am on the Cadastro page

@signup_individual_failed_invalid_data
Scenario Outline: Invalid data when trying to sign up
And I fill in the individual Email field "<email>"
And I fill in the individual Senha field "<password>"
And I fill in the individual Nome Completo field "<personal_name>"
And I fill in the individual CPF field "<cpf>"
And I fill in the individual Data de Nascimento field "<birthdate>"
And I fill in the individual Telefone field "<phone_1>"
And I fill in the individual Telefone Secundário field "<phone_2>"
When I select the profile "<profile>"
Then I should see the verification message "<verification_message>"

Examples:
    | email                 | password | personal_name | cpf            | birthdate  | phone_1     | phone_2     | profile                | verification_message                                                                                                |
    | testemailinator.com   | 123      | TestePF       | 482.627.000-31 | 10/09/1995 | 11923456789 | 1987654321  | Solteiro               | Este campo deve ser um email válido.                                                                                |
    | teste@mailinator.com  | 12       | TestePF       | 482.627.000-31 | 10/09/1995 | 11923456789 | 1987654321  | Solteira               | Este campo é pequeno demais. Ele deveria ter 3 caracteres ou mais.                                                  |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.0      | 10/09/1995 | 11923456789 | 1987654321  | Lar com gestante       | Este campo é pequeno demais. Ele deveria ter 11 caracteres ou mais.\nCPF inválido.                                  |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.098-35 | 10/09/1995 | 11923456789 | 1987654321  | Lar com filhos adultos | CPF inválido.                                                                                                       |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/0       | 11923456789 | 1987654321  | Pequenos escritórios   | Este campo é pequeno demais. Ele deveria ter 8 caracteres ou mais.\nEste valor parece ser inválido.\nData inválida. |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/00/0000 | 11923456789 | 1987654321  | Lar com crianças       | Este valor parece ser inválido.\nData inválida.                                                                     |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/05/0000 | 11923456789 | 1987654321  | Lar com adolescentes   | Este valor parece ser inválido.                                                                                     |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/09/1995 | 11111111111 | 1987654321  | Lar com idoso          | Número de telefone inválido.                                                                                        |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/09/1995 | 111143311   | 1987654321  | Casal                  | Este campo é pequeno demais. Ele deveria ter 10 caracteres ou mais.                                                 |
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/09/1995 | 11923456789 | 11111111111 | República              | Número de telefone inválido.                                                                                        |    
    | teste@mailinator.com  | 123      | TestePF       | 482.627.000-31 | 10/05/1995 | 11923456789 | 111143311   | Lar com crianças       | Este campo é pequeno demais. Ele deveria ter 10 caracteres ou mais.                                                 |

@signup_individual_email_already_used_failed
Scenario: Failed to sign up (email already used)
And I fill in the individual Email field "atendimento@hotmail.com"
And I fill in the individual Senha field "123"
And I fill in the individual Nome Completo field "Atendimento"
And I fill in the individual CPF field "482.627.000-31"
And I fill in the individual Data de Nascimento field "15/10/1991"
And I fill in the individual Telefone field "11987654321"
And I fill in the individual Telefone Secundário field "2212345678"
And I select the profile "Solteiro"
And I fill in the Buscar Endereço field "Rua 25 de março, 753"
And I select the first address
When I click on the Continuar button
Then I should see the verification message "Este valor já está sendo usado."

@signup_individual_name_invalid_failed
Scenario: Failed to sign up (invalid name)
And I fill in the individual Email field "random_email"
And I fill in the individual Senha field "123"
And I fill in the individual Nome Completo field "T"
And I fill in the individual CPF field "482.627.000-31"
And I fill in the individual Data de Nascimento field "15/10/1991"
And I fill in the individual Telefone field "11987654321"
And I fill in the individual Telefone Secundário field "2212345678"
And I select the profile "Solteiro"
And I fill in the Buscar Endereço field "Rua 25 de março, 753"
And I select the first address
When I click on the Continuar button
Then I should see the verification message "Este valor é muito curto. Deve ter 2 caracteres ou mais."

@signup_individual_successful
Scenario: Successful sign up
And I fill in the individual Email field "random_email"
And I fill in the individual Senha field "123"
And I fill in the individual Nome Completo field "TestePF"
And I fill in the individual CPF field "482.627.000-31"
And I fill in the individual Data de Nascimento field "15/10/1991"
And I fill in the individual Telefone field "11987654321"
And I fill in the individual Telefone Secundário field "2212345678"
And I select the profile "Solteiro"
And I fill in the Buscar Endereço field "Rua 25 de março, 753"
And I select the first address
When I click on the Continuar button
Then I confirm that I am on the Pagamento page

@signup_individual_successful_complete
Scenario: Successful sign up (complete)
Then I register the individual data