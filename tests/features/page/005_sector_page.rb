class TopbarSection < SitePrism::Section
    element :sector_alimentos, '[title="Alimentos"]'
    element :sector_bebidas, '[title="Bebidas"]'
    element :sector_casa_e_limpeza, '[title="Casa e Limpeza"]'
    element :sector_cuidados_com_a_roupa, '[title="Cuidados com a Roupa"]'
    element :sector_descartaveis_e_utilitarios, '[title="Descartáveis e Utilitários"]'
    element :sector_escritorio, '[title="Escritório"]'
    element :sector_higiene_e_beleza, '[title="Higiene e Beleza"]'
    element :sector_infantil, '[title="Infantil"]'
    element :sector_pet_shop, '[title="Pet Shop"]'
    element :sector_precos_com_desconto, '[title="Preços com Desconto"]'

    element :category_acucar, '[title="Açúcar"]'
    element :category_leite, '[title="Leite"]'

    def hover_sector(sector)
        sector.has_link?
        sector.hover
    end

    def click_topbar_category(topbar_category)
        page.all(:link,"#{topbar_category}")[0].click
    end
    
    def click_category_acucar
        category_acucar.click
    end

    def click_category_leite
        category_leite.click
    end
end

class SidebarSection < SitePrism::Section
    element :title_filter_sector, '[data-selenium="shopping-department-menu-filter-title"]'
    element :category_acucar, '[title="Açúcar"]'
    element :category_amaciante, '[title="Amaciante"]'
    element :category_caes, '[title="Cães"]'
    element :category_gatos, '[title="Gatos"]'
    element :category_leite, '[title="Leite"]'

    def click_sidebar_category(sidebar_category)
        page.all(:link,"#{sidebar_category}")[0].click
    end

    def click_category_acucar
        category_acucar.click
    end

    def click_category_amaciante
        category_amaciante.click
    end

    def click_category_caes
        category_caes.click
    end

    def click_category_gatos
        category_gatos.click
    end

    def click_category_leite
        category_leite.click
    end
end

class SectorPage < SitePrism::Page
    set_url'/'

    section :topbar, TopbarSection, '#base-navigation'
    section :sidebar, SidebarSection, '.molecule-menu-sidebar'

    element :title_sector, '[data-selenium="breadcrumb-department-name"]'
    element :title_category, '[data-selenium="breadcrumb-category-name"]'
    element :btn_add_featured_product, '[data-selenium="product-featured-button-item-plus"]'
    element :btn_minus_featured_product, '[data-selenium="product-featured-button-item-minus"]'

    def click_btn_add_featured_product
        btn_add_featured_product.click
    end

    def click_btn_minus_featured_product
        btn_minus_featured_product.click
    end
end