@sector_pet_shop
Feature: Pet Shop sector
    In order to browse Pet Shop sector categories 
    As an unsign up user
    I want to browse through the Pet Shop categories and add some products to my bag

@topbar_sector_pet_shop
Scenario Outline: Browsing through the categories of the Pet Shop sector of topbar
Given I am on the Pet Shop sector page
When I hover over the Pet Shop sector
And I click on the "<title_category>" category on the Pet Shop topbar
And I confirm that I am on the "<page_category>" Pet Shop sector category page
And I add a product of the Pet Shop sector category
Then I confirm that the Pet Shop category product is in my bag

Examples:
    | title_category | page_category |
    | Banho Pet      | Banho Pet     |
    | Cães           | Cães          |
    | Gatos          | Gatos         |
    | Ração Cães     | Ração Cães    |
    | Ração Gatos    | Ração Gatos   |
   
@sidebar_sector_pet_shop
Scenario Outline: Browsing through the categories of the Pet Shop sector of sidebar
Given I am on the Pet Shop sector page
When I click on the "<title_category>" category on the Pet Shop sidebar
And I confirm that I am on the "<page_category>" Pet Shop sector category page
And I add a product of the Pet Shop sector category
Then I confirm that the Pet Shop category product is in my bag

Examples:
    | title_category | page_category |
    | Banho Pet      | Banho Pet     |
    | Cães           | Cães          |
    | Gatos          | Gatos         |
    | Ração Cães     | Ração Cães    |
    | Ração Gatos    | Ração Gatos   |