@sector_casa_e_limpeza
Feature: Casa e Limpeza sector
    In order to browse Casa e Limpeza sector categories 
    As an unsign up user
    I want to browse through the Casa e Limpeza sector categories and add some products to my bag

@topbar_sector_casa_e_limpeza
Scenario Outline: Browsing through the categories of the Casa e Limpeza sector of topbar
Given I am on the Casa e Limpeza sector page
When I hover over the Casa e Limpeza sector
And I click on the "<title_category>" category on the Casa e Limpeza topbar
And I confirm that I am on the "<page_category>" Casa e Limpeza sector category page
And I add a product of the Casa e Limpeza sector category
Then I confirm that the Casa e Limpeza category product is in my bag

Examples:
    | title_category       | page_category        |
    | Álcool               | Álcool               |
    | Antimofo             | Antimofo             |
    | Banheiro             | Banheiro             |
    | Biodegradável        | Biodegradável        |
    | Cozinha              | Cozinha              |
    | Cuidados com o Carro | Cuidados com o Carro |
    | Desinfetante         | Desinfetante         |
    | Fragrância Sanitário | Fragrância Sanitário |
    | Lava Louças          | Lava Louças          |
    | Lava Roupas          | Lava Roupas          |
    | Limpador Multiuso    | Limpador Multiuso    |
    | Limpador Perfumado   | Limpador Perfumado   |
    | Limpeza Básica       | Limpeza Básica       |
    | Limpeza Pesada       | Limpeza Pesada       |
    | Panos                | Panos                |
    | Pisos                | Pisos                |
    | Polidor de Metais    | Polidor de Metais    |
    | Sabão Glicerinado    | Sabão Glicerinado    |
    | Saco para Lixo       | Saco para Lixo       |
    | Tira Manchas         | Tira Manchas         |

@sidebar_sector_casa_e_limpeza
Scenario Outline: Browsing through the categories of the Casa e Limpeza sector of sidebar
Given I am on the Casa e Limpeza sector page
When I click on the "<title_category>" category on the Casa e Limpeza sidebar
And I confirm that I am on the "<page_category>" Casa e Limpeza sector category page
And I add a product of the Casa e Limpeza sector category
Then I confirm that the Casa e Limpeza category product is in my bag

Examples:
    | title_category       | page_category        |
    | Álcool               | Álcool               |
    | Antimofo             | Antimofo             |
    | Banheiro             | Banheiro             |
    | Biodegradável        | Biodegradável        |
    | Cozinha              | Cozinha              |
    | Cuidados com o Carro | Cuidados com o Carro |
    | Desinfetante         | Desinfetante         |
    | Fragrância Sanitário | Fragrância Sanitário |
    | Lava Louças          | Lava Louças          |
    | Lava Roupas          | Lava Roupas          |
    | Limpador Multiuso    | Limpador Multiuso    |
    | Limpador Perfumado   | Limpador Perfumado   |
    | Limpeza Básica       | Limpeza Básica       |
    | Limpeza Pesada       | Limpeza Pesada       |
    | Panos                | Panos                |
    | Pisos                | Pisos                |
    | Polidor de Metais    | Polidor de Metais    |
    | Sabão Glicerinado    | Sabão Glicerinado    |
    | Saco para Lixo       | Saco para Lixo       |
    | Tira Manchas         | Tira Manchas         |