@user_dashboard
Feature: Access the registration data
    In order to access my registration data
    As an signed up user
    I want to access all my registration data

@user_dashboard_my_refil
Scenario: Accessing Meu Refil page 
Given I am on the Dashboard page
When I click on the Meu Refil button
Then I confirm that I am on the Meu Refil page

@user_dashboard_delivery_date
Scenario: Accessing Agenda de Entregas page 
Given I am on the Dashboard page
When I click on the Agenda de Entregas button
Then I confirm that I am on the Agenda de Entregas page

@user_dashboard_personal_data
Scenario: Accessing Dados Pessoais page 
Given I am on the Dashboard page
When I click on the Dados Pessoais button
Then I confirm that I am on the Dados Pessoais page

@user_dashboard_delivery_data
Scenario: Accessing Dados de Entregas page 
Given I am on the Dashboard page
When I click on the Dados de Entregas button
Then I confirm that I am on the Dados de Entregas page

@user_dashboard_financial_data
Scenario: Accessing Dados Financeiros page 
Given I am on the Dashboard page
When I click on the Dados Financeiros button
Then I confirm that I am on the Dados Financeiros page