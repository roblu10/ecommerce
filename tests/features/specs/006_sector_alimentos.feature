@sector_alimentos
Feature: Alimentos sector
    In order to browse Alimentos sector categories 
    As an unsign up user
    I want to browse through the Alimentos sector categories and add some products to my bag

@topbar_sector_alimentos
Scenario Outline: Browsing through the categories of the Alimentos sector of topbar
Given I am on the Alimentos sector page
When I hover over the Alimentos sector
And I click on the "<title_category>" category on the Alimentos topbar
And I confirm that I am on the "<page_category>" Alimentos sector category page
And I add a product of the Alimentos sector category
Then I confirm that the Alimentos category product is in my bag

Examples:
    | title_category                 | page_category                  |
    | Achocolatados                  | Achocolatados                  |
    | Açúcar                         | Açúcar                         |
    | Adoçante                       | Adoçante                       |
    | Alimentos sem Adição de Açúcar | Alimentos sem Adição de Açúcar |
    | Alimentos sem Glúten           | Alimentos sem Glúten           |
    | Arroz, Feijão e Grãos          | Arroz, Feijão e Grãos          |
    | Biscoitos                      | Biscoitos                      |
    | Bomboniere                     | Bomboniere                     |
    | Café                           | Café                           |
    | Confeitaria                    | Confeitaria                    |
    | Conservas e Enlatados          | Conservas e Enlatados          |
    | Creme de Leite                 | Creme de Leite                 |
    | Doces e Sobremesas             | Doces e Sobremesas             |
    | Farinhas e Farofas             | Farinhas e Farofas             |
    | Leite                          | Leite                          |
    | Massas                         | Massas                         |
    | Matinais                       | Matinais                       |
    | Molhos                         | Molhos                         |
    | Natal                          | Natal                          |
    | Naturais e Orgânicos           | Naturais e Orgânicos           |
    | Óleos e Azeites                | Óleos e Azeites                |
    | Pães e Bolos                   | Pães e Bolos                   |
    | Produtos sem Lactose           | Produtos sem Lactose           |
    | Queijo                         | Queijo                         |
    | Snacks                         | Snacks                         |
    | Sopas e Cremes                 | Sopas e Cremes                 |
    | Temperos e Condimentos         | Temperos e Condimentos         |
    | Vegano                         | Vegano                         |

@sidebar_sector_alimentos
Scenario Outline: Browsing through the categories of the Alimentos sector of sidebar
Given I am on the Alimentos sector page
When I click on the "<title_category>" category on the Alimentos sidebar
And I confirm that I am on the "<page_category>" Alimentos sector category page
And I add a product of the Alimentos sector category
Then I confirm that the Alimentos category product is in my bag

Examples:
    | title_category                 | page_category                  |
    | Achocolatados                  | Achocolatados                  |
    | Açúcar                         | Açúcar                         |
    | Adoçante                       | Adoçante                       |
    | Alimentos sem Adição de Açúcar | Alimentos sem Adição de Açúcar |
    | Alimentos sem Glúten           | Alimentos sem Glúten           |
    | Arroz, Feijão e Grãos          | Arroz, Feijão e Grãos          |
    | Biscoitos                      | Biscoitos                      |
    | Bomboniere                     | Bomboniere                     |
    | Café                           | Café                           |
    | Confeitaria                    | Confeitaria                    |
    | Conservas e Enlatados          | Conservas e Enlatados          |
    | Creme de Leite                 | Creme de Leite                 |
    | Doces e Sobremesas             | Doces e Sobremesas             |
    | Farinhas e Farofas             | Farinhas e Farofas             |
    | Leite                          | Leite                          |
    | Massas                         | Massas                         |
    | Matinais                       | Matinais                       |
    | Molhos                         | Molhos                         |
    | Natal                          | Natal                          |
    | Naturais e Orgânicos           | Naturais e Orgânicos           |
    | Óleos e Azeites                | Óleos e Azeites                |
    | Pães e Bolos                   | Pães e Bolos                   |
    | Produtos sem Lactose           | Produtos sem Lactose           |
    | Queijo                         | Queijo                         |
    | Snacks                         | Snacks                         |
    | Sopas e Cremes                 | Sopas e Cremes                 |
    | Temperos e Condimentos         | Temperos e Condimentos         |
    | Vegano                         | Vegano                         |