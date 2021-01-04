@sector_descartaveis_e_utilitarios
Feature: Descartáveis e Utilitários sector
    In order to browse Descartáveis e Utilitários sector categories 
    As an unsign up user
    I want to browse through the Descartáveis e Utilitários sector categories and add some products to my bag

@topbar_sector_descartaveis_e_utilitarios
Scenario Outline: Browsing through the categories of the Descartáveis e Utilitários sector of topbar
Given I am on the Descartaveis e Utilitarios sector page
When I hover over the Descartaveis e Utilitarios sector
And I click on the "<title_category>" category on the Descartaveis e Utilitarios topbar
And I confirm that I am on the "<page_category>" Descartaveis e Utilitarios sector category page
And I add a product of the Descartaveis e Utilitarios sector category
Then I confirm that the Descartaveis e Utilitarios category product is in my bag

Examples:
    | title_category       | page_category        |
    | Bactericida          | Bactericida          |
    | Cera para Calçados   | Cera para Calçados   |
    | Copos Descartáveis   | Copos Descartáveis   |
    | Cuidados com o Carro | Cuidados com o Carro |
    | Filme PVC            | Filme PVC            |
    | Filtro de Papel      | Filtro de Papel      |
    | Fósforo              | Fósforo              |
    | Guardanapo           | Guardanapo           |
    | Inseticida           | Inseticida           |
    | Lenços de Papel      | Lenços de Papel      |
    | Palito de Dente      | Palito de Dente      |
    | Panos                | Panos                |
    | Papel Alumínio       | Papel Alumínio       |
    | Papel Manteiga       | Papel Manteiga       |
    | Papel Toalha         | Papel Toalha         |
    | Pilhas e Baterias    | Pilhas e Baterias    |
    | Pregador de Roupa    | Pregador de Roupa    |
    | Repelente de Insetos | Repelente de Insetos |
    | Rolo Adesivo         | Rolo Adesivo         |
    | Saco para Freezer    | Saco para Freezer    |
    | Saco para Lixo       | Saco para Lixo       |

@sidebar_sector_descartaveis_e_utilitarios
Scenario Outline: Browsing through the categories of the Descartáveis e Utilitários sector of sidebar
Given I am on the Descartaveis e Utilitarios sector page
When I click on the "<title_category>" category on the Descartaveis e Utilitarios sidebar
And I confirm that I am on the "<page_category>" Descartaveis e Utilitarios sector category page
And I add a product of the Descartaveis e Utilitarios sector category
Then I confirm that the Descartaveis e Utilitarios category product is in my bag

Examples:
    | title_category       | page_category        |
    | Bactericida          | Bactericida          |
    | Cera para Calçados   | Cera para Calçados   |
    | Copos Descartáveis   | Copos Descartáveis   |
    | Cuidados com o Carro | Cuidados com o Carro |
    | Filme PVC            | Filme PVC            |
    | Filtro de Papel      | Filtro de Papel      |
    | Fósforo              | Fósforo              |
    | Guardanapo           | Guardanapo           |
    | Inseticida           | Inseticida           |
    | Lenços de Papel      | Lenços de Papel      |
    | Palito de Dente      | Palito de Dente      |
    | Panos                | Panos                |
    | Papel Alumínio       | Papel Alumínio       |
    | Papel Manteiga       | Papel Manteiga       |
    | Papel Toalha         | Papel Toalha         |
    | Pilhas e Baterias    | Pilhas e Baterias    |
    | Pregador de Roupa    | Pregador de Roupa    |
    | Repelente de Insetos | Repelente de Insetos |
    | Rolo Adesivo         | Rolo Adesivo         |
    | Saco para Freezer    | Saco para Freezer    |
    | Saco para Lixo       | Saco para Lixo       |