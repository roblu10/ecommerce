@sector_higiene_e_beleza
Feature: Higiene e Beleza sector
    In order to browse Higiene e Beleza sector categories 
    As an unsign up user
    I want to browse through the Higiene e Beleza sector categories and add some products to my bag

@topbar_sector_higiene_e_beleza
Scenario Outline: Browsing through the categories of the Higiene e Beleza sector of topbar
Given I am on the Higiene e Beleza sector page
When I hover over the Higiene e Beleza sector
And I click on the "<title_category>" category on the Higiene e Beleza topbar
And I confirm that I am on the "<page_category>" Higiene e Beleza sector category page
And I add a product of the Higiene e Beleza sector category
Then I confirm that the Higiene e Beleza category product is in my bag

Examples:
    | title_category          | page_category           |
    | Algodão                 | Algodão                 |
    | Banho Infantil          | Banho Infantil          |
    | Corpo e Rosto           | Corpo e Rosto           |
    | Depilação               | Depilação               |
    | Desodorante Feminino    | Desodorante Feminino    |
    | Desodorante Masculino   | Desodorante Masculino   |
    | Desodorante para os Pés | Desodorante para os Pés |
    | Fralda Geriátrica       | Fralda Geriátrica       |
    | Higiene Bucal           | Higiene Bucal           |
    | Higiene Bucal Infantil  | Higiene Bucal Infantil  |
    | Higiene Íntima          | Higiene Íntima          |
    | Limpeza Pesada          | Limpeza Pesada          |
    | Mãos e Pés              | Mãos e Pés              |
    | Papel Higiênico         | Papel Higiênico         |
    | Produtos para Barba     | Produtos para Barba     |
    | Produtos para Cabelo    | Produtos para Cabelo    |
    | Repelente Corporal      | Repelente Corporal      |
    | Sabonete                | Sabonete                |

@sidebar_sector_higiene_e_beleza
Scenario Outline: Browsing through the categories of the Higiene e Beleza sector of sidebar
Given I am on the Higiene e Beleza sector page
When I click on the "<title_category>" category on the Higiene e Beleza sidebar
And I confirm that I am on the "<page_category>" Higiene e Beleza sector category page
And I add a product of the Higiene e Beleza sector category
Then I confirm that the Higiene e Beleza category product is in my bag

Examples:
    | title_category          | page_category           |
    | Algodão                 | Algodão                 |
    | Banho Infantil          | Banho Infantil          |
    | Corpo e Rosto           | Corpo e Rosto           |
    | Depilação               | Depilação               |
    | Desodorante Feminino    | Desodorante Feminino    |
    | Desodorante Masculino   | Desodorante Masculino   |
    | Desodorante para os Pés | Desodorante para os Pés |
    | Fralda Geriátrica       | Fralda Geriátrica       |
    | Higiene Bucal           | Higiene Bucal           |
    | Higiene Bucal Infantil  | Higiene Bucal Infantil  |
    | Higiene Íntima          | Higiene Íntima          |
    | Limpeza Pesada          | Limpeza Pesada          |
    | Mãos e Pés              | Mãos e Pés              |
    | Papel Higiênico         | Papel Higiênico         |
    | Produtos para Barba     | Produtos para Barba     |
    | Produtos para Cabelo    | Produtos para Cabelo    |
    | Repelente Corporal      | Repelente Corporal      |
    | Sabonete                | Sabonete                |