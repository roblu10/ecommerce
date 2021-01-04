@sector_cuidados_com_a_roupa
Feature: Cuidados com a Roupa sector
    In order to browse Cuidados com a Roupa sector categories 
    As an unsign up user
    I want to browse through the Cuidados com a Roupa categories and add some products to my bag

@topbar_sector_cuidados_com_a_roupa
Scenario Outline: Browsing through the categories of the Cuidados com a Roupa sector of topbar
Given I am on the Cuidados com a Roupa sector page
When I hover over the Cuidados com a Roupa sector
And I click on the "<title_category>" category on the Cuidados com a Roupa topbar
And I confirm that I am on the "<page_category>" Cuidados com a Roupa sector category page
And I add a product of the Cuidados com a Roupa sector category
Then I confirm that the Cuidados com a Roupa category product is in my bag

Examples:
    | title_category        | page_category         |
    | Alvejante sem Cloro   | Alvejante sem Cloro   |
    | Amaciante             | Amaciante             |
    | Amaciante Concentrado | Amaciante Concentrado |
    | Antimofo              | Antimofo              |
    | Antimofo para Roupas  | Antimofo para Roupas  |
    | Lava Roupas           | Lava Roupas           |
    | Passa Roupas          | Passa Roupas          |
    | Sabão de Coco         | Sabão de Coco         |
    | Sabão Glicerinado     | Sabão Glicerinado     |
    | Tira Manchas          | Tira Manchas          |
   
@sidebar_sector_cuidados_com_a_roupa
Scenario Outline: Browsing through the categories of the Cuidados com a Roupa sector of sidebar
Given I am on the Cuidados com a Roupa sector page
When I click on the "<title_category>" category on the Cuidados com a Roupa sidebar
And I confirm that I am on the "<page_category>" Cuidados com a Roupa sector category page
And I add a product of the Cuidados com a Roupa sector category
Then I confirm that the Cuidados com a Roupa category product is in my bag

Examples:
    | title_category        | page_category         |
    | Alvejante sem Cloro   | Alvejante sem Cloro   |
    | Amaciante             | Amaciante             |
    | Amaciante Concentrado | Amaciante Concentrado |
    | Antimofo              | Antimofo              |
    | Antimofo para Roupas  | Antimofo para Roupas  |
    | Lava Roupas           | Lava Roupas           |
    | Passa Roupas          | Passa Roupas          |
    | Sabão de Coco         | Sabão de Coco         |
    | Sabão Glicerinado     | Sabão Glicerinado     |
    | Tira Manchas          | Tira Manchas          |