@sector_escritorio
Feature: Escritório sector
    In order to browse Escritório sector categories 
    As an unsign up user
    I want to browse through the Escritório sector categories and add some products to my bag

@topbar_sector_escritorio
Scenario Outline: Browsing through the categories of the Escritório sector of topbar
Given I am on the Escritorio sector page
When I hover over the Escritorio sector
And I click on the "<title_category>" category on the Escritorio topbar
And I confirm that I am on the "<page_category>" Escritorio sector category page
And I add a product of the Escritorio sector category
Then I confirm that the Escritorio category product is in my bag

Examples:
    | title_category        | page_category       |
    | Arte Escolar          | Arte Escolar        |
    | Clips/Elásticos       | Clips/Elásticos     |
    | Escrita e Corretivo   | Escrita e Corretivo |
    | Papelaria             | Papelaria           |
    | Pilhas e Baterias     | Pilhas e Baterias   |

@sidebar_sector_escritorio
Scenario Outline: Browsing through the categories of the Escritório sector of sidebar
Given I am on the Escritorio sector page
When I click on the "<title_category>" category on the Escritorio sidebar
And I confirm that I am on the "<page_category>" Escritorio sector category page
And I add a product of the Escritorio sector category
Then I confirm that the Escritorio category product is in my bag

Examples:
    | title_category        | page_category       |
    | Arte Escolar          | Arte Escolar        |
    | Clips/Elásticos       | Clips/Elásticos     |
    | Escrita e Corretivo   | Escrita e Corretivo |
    | Papelaria             | Papelaria           |
    | Pilhas e Baterias     | Pilhas e Baterias   |