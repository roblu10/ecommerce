@signup_schedule
Feature: Schedule the first delivery date 
    In order to schedule the first delivery date 
    As an unsign up user
    I want to select an enabled delivery date

Background:
Given I am on the Homepage page
And I add a product

@signup_schedule_first_enabled_delivery_date
Scenario: Schedule the first enabled delivery date
And I click on the Bag
And I click on the Finalizar Pedido button 
And I confirm that I am on the Schedule Signup page 
And I select first enabled delivery date
Then I click on the Escolher data button

@signup_schedule_first_delivery_date
Scenario: Schedule the first delivery date
And I click on the Bag
And I click on the Finalizar Pedido button 
And I confirm that I am on the Schedule Signup page 
And I click on the Next Month button 
And I select first enabled delivery date
Then I click on the Escolher data button

@signup_schedule_first_enabled_delivery_date_complete
Scenario: Schedule the first enabled delivery date (complete)
Then I set the first enabled delivery date