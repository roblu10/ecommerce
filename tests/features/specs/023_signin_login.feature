@signin_login
Feature: Log in
    In order to log in my account
    As an signed up user
    I want to log into my account and access my registration data

@signin_login_failed_invalid_data
Scenario Outline: Invalid data when trying to log in
Given I am on the Login page
And I fill in the Email field "<email>"
And I fill in the Senha field "<password>"
Then I should see the verification message "<verification_message>"

Examples:
    | email                 | password | verification_message                                               |
    | teste@mailinator      | 123      | Este campo deve ser um email válido.                               |
    | teste@mailinator.com  | 12       | Este campo é pequeno demais. Ele deveria ter 3 caracteres ou mais. |

@signin_login_failed_invalid_data_II
Scenario: Invalid data when trying to log in II
Given I am on the Login page
And I fill in the Email field "teste@mailinator.com"
And I fill in the Senha field "jyk"
And I click on the Entrar button
Then I should see the verification message "E-mail ou senha inválido"

@signin_login_successful
Scenario: Sign in successful
Given I am on the Login page
And I fill in the Email field "atendimento@hotmail.com.tmp"
And I fill in the Senha field "123"
And I click on the Entrar button
Then I confirm that I am on the Dashboard page