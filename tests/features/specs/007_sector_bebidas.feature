@sector_bebidas
Feature: Bebidas sector
    In order to browse Bebidas sector categories 
    As an unsign up user
    I want to browse through the Bebidas sector categories and add some products to my bag

@topbar_sector_bebidas
Scenario Outline: Browsing through the categories of the Bebidas sector of topbar
Given I am on the Bebidas sector page
When I hover over the Bebidas sector
And I click on the "<title_category>" category on the Bebidas topbar
And I confirm that I am on the "<page_category>" Bebidas sector category page
And I add a product of the Bebidas sector category
Then I confirm that the Bebidas category product is in my bag

Examples:
    | title_category           | page_category            |
    | Água de Coco             | Água de Coco             |
    | Água Mineral e Tônica    | Água Mineral e Tônica    |
    | Bebida Láctea e Natural  | Bebida Láctea e Natural  |
    | Bebida Leve              | Bebida Leve              |
    | Bebidas Funcionais       | Bebidas Funcionais       |
    | Bebidas sem Açúcar       | Bebidas sem Açúcar       |
    | Cerveja Premium          | Cerveja Premium          |
    | Cervejas                 | Cervejas                 |
    | Chás e Mates             | Chás e Mates             |
    | Destilados               | Destilados               |
    | Isotônicos e Energéticos | Isotônicos e Energéticos |
    | Produtos sem Lactose     | Produtos sem Lactose     |
    | Refrigerante             | Refrigerante             |
    | Sucos e Refrescos        | Sucos e Refrescos        |
    | Vegano                   | Vegano                   |
    | Vinhos e Espumantes      | Vinhos e Espumantes      |

@sidebar_sector_bebidas
Scenario Outline: Browsing through the categories of the Bebidas sector of sidebar
Given I am on the Bebidas sector page
When I click on the "<title_category>" category on the Bebidas sidebar
And I confirm that I am on the "<page_category>" Bebidas sector category page
And I add a product of the Bebidas sector category
Then I confirm that the Bebidas category product is in my bag

Examples:
    | title_category           | page_category            |
    | Água de Coco             | Água de Coco             |
    | Água Mineral e Tônica    | Água Mineral e Tônica    |
    | Bebida Láctea e Natural  | Bebida Láctea e Natural  |
    | Bebida Leve              | Bebida Leve              |
    | Bebidas Funcionais       | Bebidas Funcionais       |
    | Bebidas sem Açúcar       | Bebidas sem Açúcar       |
    | Cerveja Premium          | Cerveja Premium          |
    | Cervejas                 | Cervejas                 |
    | Chás e Mates             | Chás e Mates             |
    | Destilados               | Destilados               |
    | Isotônicos e Energéticos | Isotônicos e Energéticos |
    | Produtos sem Lactose     | Produtos sem Lactose     |
    | Refrigerante             | Refrigerante             |
    | Sucos e Refrescos        | Sucos e Refrescos        |
    | Vegano                   | Vegano                   |
    | Vinhos e Espumantes      | Vinhos e Espumantes      |