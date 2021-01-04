@sector_precos_com_desconto
Feature: Preços com Desconto sector
    In order to browse Preços com Desconto sector categories 
    As an unsign up user
    I want to browse through the Preços com Desconto sector categories and add some products to my bag

@topbar_sector_precos_com_desconto
Scenario Outline: Browsing through the categories of the Preços com Desconto sector of topbar
Given I am on the Preços com Desconto sector page
When I hover over the Preços com Desconto sector
And I click on the "<title_category>" category on the Preços com Desconto topbar
And I confirm that I am on the "<page_category>" Preços com Desconto sector category page
And I add a product of the Preços com Desconto sector category
Then I confirm that the Preços com Desconto category product is in my bag

Examples:
    | title_category           | page_category            |
    | Achocolatados            | Achocolatados            |
    | Açúcar                   | Açúcar                   |
    | Adoçante                 | Adoçante                 |
    | Água Mineral e Tônica    | Água Mineral e Tônica    |
    | Alimentação Infantil     | Alimentação Infantil     |
    | Amaciante                | Amaciante                |
    | Arroz, Feijão e Grãos    | Arroz, Feijão e Grãos    |
    | Banheiro                 | Banheiro                 |
    | Banho Infantil           | Banho Infantil           |
    | Banho Pet                | Banho Pet                |
    | Biscoitos                | Biscoitos                |
    | Bomboniere               | Bomboniere               |
    | Cães                     | Cães                     |
    | Café                     | Café                     |
    | Cera para Calçados       | Cera para Calçados       |
    | Cerveja Premium          | Cerveja Premium          |
    | Cervejas                 | Cervejas                 |
    | Confeitaria              | Confeitaria              |
    | Conservas e Enlatados    | Conservas e Enlatados    |
    | Corpo e Rosto            | Corpo e Rosto            |
    | Cozinha                  | Cozinha                  |
    | Creme de Leite           | Creme de Leite           |
    | Cuidados com o Carro     | Cuidados com o Carro     |
    | Depilação                | Depilação                |
    | Desinfetante             | Desinfetante             |
    | Fralda Geriátrica        | Fralda Geriátrica        |
    | Fraldas Descartáveis     | Fraldas Descartáveis     |
    | Gatos                    | Gatos                    |
    | Higiene Bucal            | Higiene Bucal            |
    | Higiene Íntima           | Higiene Íntima           |
    | Inseticida               | Inseticida               |
    | Isotônicos e Energéticos | Isotônicos e Energéticos |
    | Lava Louças              | Lava Louças              |
    | Lava Roupas              | Lava Roupas              |
    | Leite                    | Leite                    |
    | Limpador Multiuso        | Limpador Multiuso        |
    | Limpador Perfumado       | Limpador Perfumado       |
    | Limpeza Básica           | Limpeza Básica           |
    | Limpeza Pesada           | Limpeza Pesada           |
    | Massas                   | Massas                   |
    | Matinais                 | Matinais                 |
    | Molhos                   | Molhos                   |
    | Naturais e Orgânicos     | Naturais e Orgânicos     |
    | Óleos e Azeites          | Óleos e Azeites          |
    | Pães e Bolos             | Pães e Bolos             |
    | Panos                    | Panos                    |
    | Papel Toalha             | Papel Toalha             |
    | Papelaria                | Papelaria                |
    | Produtos para Barba      | Produtos para Barba      |
    | Produtos para Cabelo     | Produtos para Cabelo     |
    | Ração Gatos              | Ração Gatos              |
    | Refrigerante             | Refrigerante             |
    | Repelente Corporal       | Repelente Corporal       |
    | Repelente de Insetos     | Repelente de Insetos     |
    | Repelente Infantil       | Repelente Infantil       |
    | Sabonete                 | Sabonete                 |
    | Saco para Lixo           | Saco para Lixo           |
    | Snacks                   | Snacks                   |
    | Sopas e Cremes           | Sopas e Cremes           |
    | Sucos e Refrescos        | Sucos e Refrescos        |
    | Temperos e Condimentos   | Temperos e Condimentos   |
    | Tira Manchas             | Tira Manchas             |
    | Vegano                   | Vegano                   |
    | Vinhos e Espumantes      | Vinhos e Espumantes      |

@sidebar_sector_precos_com_desconto
Scenario Outline: Browsing through the categories of the Preços com Desconto sector of sidebar
Given I am on the Preços com Desconto sector page
When I click on the "<title_category>" category on the Preços com Desconto sidebar
And I confirm that I am on the "<page_category>" Preços com Desconto sector category page
And I add a product of the Preços com Desconto sector category
Then I confirm that the Preços com Desconto category product is in my bag

Examples:
    | title_category           | page_category            |
    | Achocolatados            | Achocolatados            |
    | Açúcar                   | Açúcar                   |
    | Adoçante                 | Adoçante                 |
    | Água Mineral e Tônica    | Água Mineral e Tônica    |
    | Alimentação Infantil     | Alimentação Infantil     |
    | Amaciante                | Amaciante                |
    | Arroz, Feijão e Grãos    | Arroz, Feijão e Grãos    |
    | Banheiro                 | Banheiro                 |
    | Banho Infantil           | Banho Infantil           |
    | Banho Pet                | Banho Pet                |
    | Biscoitos                | Biscoitos                |
    | Bomboniere               | Bomboniere               |
    | Cães                     | Cães                     |
    | Café                     | Café                     |
    | Cera para Calçados       | Cera para Calçados       |
    | Cerveja Premium          | Cerveja Premium          |
    | Cervejas                 | Cervejas                 |
    | Confeitaria              | Confeitaria              |
    | Conservas e Enlatados    | Conservas e Enlatados    |
    | Corpo e Rosto            | Corpo e Rosto            |
    | Cozinha                  | Cozinha                  |
    | Creme de Leite           | Creme de Leite           |
    | Cuidados com o Carro     | Cuidados com o Carro     |
    | Depilação                | Depilação                |
    | Desinfetante             | Desinfetante             |
    | Fralda Geriátrica        | Fralda Geriátrica        |
    | Fraldas Descartáveis     | Fraldas Descartáveis     |
    | Gatos                    | Gatos                    |
    | Higiene Bucal            | Higiene Bucal            |
    | Higiene Íntima           | Higiene Íntima           |
    | Inseticida               | Inseticida               |
    | Isotônicos e Energéticos | Isotônicos e Energéticos |
    | Lava Louças              | Lava Louças              |
    | Lava Roupas              | Lava Roupas              |
    | Leite                    | Leite                    |
    | Limpador Multiuso        | Limpador Multiuso        |
    | Limpador Perfumado       | Limpador Perfumado       |
    | Limpeza Básica           | Limpeza Básica           |
    | Limpeza Pesada           | Limpeza Pesada           |
    | Massas                   | Massas                   |
    | Matinais                 | Matinais                 |
    | Molhos                   | Molhos                   |
    | Naturais e Orgânicos     | Naturais e Orgânicos     |
    | Óleos e Azeites          | Óleos e Azeites          |
    | Pães e Bolos             | Pães e Bolos             |
    | Panos                    | Panos                    |
    | Papel Toalha             | Papel Toalha             |
    | Papelaria                | Papelaria                |
    | Produtos para Barba      | Produtos para Barba      |
    | Produtos para Cabelo     | Produtos para Cabelo     |
    | Ração Gatos              | Ração Gatos              |
    | Refrigerante             | Refrigerante             |
    | Repelente Corporal       | Repelente Corporal       |
    | Repelente de Insetos     | Repelente de Insetos     |
    | Repelente Infantil       | Repelente Infantil       |
    | Sabonete                 | Sabonete                 |
    | Saco para Lixo           | Saco para Lixo           |
    | Snacks                   | Snacks                   |
    | Sopas e Cremes           | Sopas e Cremes           |
    | Sucos e Refrescos        | Sucos e Refrescos        |
    | Temperos e Condimentos   | Temperos e Condimentos   |
    | Tira Manchas             | Tira Manchas             |
    | Vegano                   | Vegano                   |
    | Vinhos e Espumantes      | Vinhos e Espumantes      |