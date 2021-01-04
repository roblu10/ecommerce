@sector_infantil
Feature: Infantil sector
    In order to browse Infantil sector categories 
    As an unsign up user
    I want to browse through the Infantil categories and add some products to my bag

@topbar_sector_infantil
Scenario Outline: Browsing through the categories of the Infantil sector of topbar
Given I am on the Infantil sector page
When I hover over the Infantil sector
And I click on the "<title_category>" category on the Infantil topbar
And I confirm that I am on the "<page_category>" Infantil sector category page
And I add a product of the Infantil sector category
Then I confirm that the Infantil category product is in my bag

Examples:
    | title_category          | page_category           |
    | Alimentação Infantil    | Alimentação Infantil    |
    | Banho Infantil          | Banho Infantil          |
    | Fraldas Descartáveis    | Fraldas Descartáveis    |
    | Higiene Bucal Infantil  | Higiene Bucal Infantil  |
    | Lava Roupas Infantil    | Lava Roupas Infantil    |
    | Protetor Solar Infantil | Protetor Solar Infantil |
    | Repelente Infantil      | Repelente Infantil      |
    | Troca                   | Troca                   |
   
@sidebar_sector_infantil
Scenario Outline: Browsing through the categories of the Infantil sector of sidebar
Given I am on the Infantil sector page
When I click on the "<title_category>" category on the Infantil sidebar
And I confirm that I am on the "<page_category>" Infantil sector category page
And I add a product of the Infantil sector category
Then I confirm that the Infantil category product is in my bag

Examples:
    | title_category          | page_category           |
    | Alimentação Infantil    | Alimentação Infantil    |
    | Banho Infantil          | Banho Infantil          |
    | Fraldas Descartáveis    | Fraldas Descartáveis    |
    | Higiene Bucal Infantil  | Higiene Bucal Infantil  |
    | Lava Roupas Infantil    | Lava Roupas Infantil    |
    | Protetor Solar Infantil | Protetor Solar Infantil |
    | Repelente Infantil      | Repelente Infantil      |
    | Troca                   | Troca                   |