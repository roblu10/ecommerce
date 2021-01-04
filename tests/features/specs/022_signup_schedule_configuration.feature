@signup_schedule_configuration
Feature: Set a schedule
    In order to finish the registration flow
    As an signed up user
    I want to set the schedule for my refill delivery dates and finish the registration flow

@signup_schedule_configuration_individual_user_credit_card
Scenario: Set a schedule to individual user (credit card) 
Given I am on the Set Schedule for individual with credit card page
When I click on Sim Salvar Configurações button
Then I confirm that I am on the Dashboard page

@signup_schedule_configuration_legal_entity_credit_card
Scenario: Set a schedule to legal entity user (credit card) 
Given I am on the Set Schedule for legal entity with credit card page
When I click on Sim Salvar Configurações button
Then I confirm that I am on the Dashboard page

@signup_schedule_configuration_individual_user_alelo_card
Scenario: Set a schedule to individual user (alelo card) 
Given I am on the Set Schedule for individual with alelo card page
When I click on Sim Salvar Configurações button
Then I confirm that I am on the Dashboard page

@signup_schedule_configuration_legal_entity_alelo_card
Scenario: Set a schedule to legal entity user (alelo card) 
Given I am on the Set Schedule for legal entity with alelo card page
When I click on Sim Salvar Configurações button
Then I confirm that I am on the Dashboard page