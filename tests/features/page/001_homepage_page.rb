class HeaderSection < SitePrism::Section
    element :field_search, '.molecule-search'
    element :btn_field_search, '[type="submit"]'
    element :link_homepage, '[title="HomeRefill"]'
    element :options_language, '[title="Idioma"]'
    element :language_portuguese, 'a[href="https://www.homerefill.com.br/locale/pt_BR"]'
    element :link_login, '[title="Entrar"]'
    element :bag, 'span[data-bag-total-products]'

    def fill_in_field_search(text)
        find('.molecule-search').set("#{text}")
    end
    
    def options_search(number)
        case number
        when 0
            find("#awesomplete_list_1_item_0").click
        when 1
            find("#awesomplete_list_1_item_1").click
        when 2
            find("#awesomplete_list_1_item_2").click
        when 3
            find("#awesomplete_list_1_item_3").click
        when 4
            find("#awesomplete_list_1_item_4").click
        else
            fail(ArgumentError.new('This option does not exist!'))
        end
    end

    def click_btn_field_search
        btn_field_search.has_button?
        btn_field_search.click
    end

    def click_link_homepage
        link_homepage.has_link?
        link_homepage.click
    end

    def click_options_language
        options_language.has_link?
        options_language.click
    end

    def click_language_portuguese
        language_portuguese.has_link?
        language_portuguese.click
    end
    
    def click_link_login
        link_login.has_link?
        link_login.click
    end

    def click_bag
        #bag.has_link?
        bag.click
    end
end

class FooterSection < SitePrism::Section
    element :link_facebook, '[title="Facebook"]'
    element :link_instagram, '[title="Instagram"]'
    element :link_twitter, '[title="Twitter"]'
    element :link_linkedin, '[title="LinkedIn"]'
    element :link_youtube, '[title="YouTube"]'
    element :link_email, '[title="E-mail"]'
    element :link_saiba_mais, '[title="Saiba mais"]'
    element :link_politica_de_privacidade, '[title="Política de privacidade"]'
    element :link_termos_de_uso, '[title="Termos de uso"]'
    element :link_como_comprar, '[title="Como comprar"]'
    element :link_sustentabilidade, '[title="Sustentabilidade"]'
    element :link_fale_conosco, '[title="Fale conosco"]'
    element :link_app_store, '.spritesheet.app.ios'
    element :link_google_play, '.spritesheet.app.android'
    element :link_google_safe_browsing, '.spritesheet.google.right'
end

class BagSection < SitePrism::Section
    element :bag_check_out, '[data-id="checkout-complete"]'

    def click_bag_check_out
        bag_check_out.click
    end
end

class HomepagePage < SitePrism::Page
    set_url'/'
    section :header, HeaderSection, '.molecule-header'
    section :footer, FooterSection, '.molecule-footer'
    section :bag_open, BagSection,  '#checkout-bag'

    element :btn_add_product, '.molecule-new-product-card__action button[data-product-quantity-plus]', match: :first 
    element :btn_minus_product, '.molecule-new-product-card__action button[data-product-quantity-minus]', match: :first
    element :link_tryout_food, '[data-tryout-url="tryout/steps?options=1"]'
    element :link_tryout_cleaning, '[data-tryout-url="tryout/steps?options=2"]'
    element :link_tryout_personal_care, '[data-tryout-url="tryout/steps?options=3"]'
    element :link_tryout_clothes_care, '[data-tryout-url="tryout/steps?options=4"]'
    element :link_tryout_baby_and_kids_care, '[data-tryout-url="tryout/steps?options=5"]'
    element :link_tryout_pet_shop, '[data-tryout-url="tryout/steps?options=6"]'
    element :btn_next_suggested_list, :xpath, ".//section[@class='column shrink'][2]//button[@class='swiper-button-next']"
    element :btn_tryout, '.molecule-banner.text-left'
    element :link_app_store, '[title="Aplicativo HomeRefill para iPhone"]'
    element :link_google_play, '[title="Aplicativo HomeRefill para Android"]'

    def click_btn_add_product
        btn_add_product.has_button?
        btn_add_product.click
    end

    def click_btn_minus_product
        btn_minus_product.has_button?
        btn_minus_product.click
    end
    
    def click_link_tryout_food
        link_tryout_food.click
    end

    def click_link_tryout_cleaning
        link_tryout_cleaning.click
    end

    def click_link_tryout_personal_care
        link_tryout_personal_care.click
    end

    def click_link_tryout_clothes_care
        link_tryout_clothes_care.click
    end

    def click_link_tryout_baby_and_kids_care
        link_tryout_baby_and_kids_care.click
    end

    def click_link_tryout_pet_shop
        link_tryout_pet_shop.click
    end

    def click_btn_next_suggested_list
        btn_next_suggested_list.click
    end

    def click_btn_suggested_list(btn_suggested_list)
        click_link "#{btn_suggested_list}"
    end

    def click_btn_tryout
        btn_tryout.click
    end

    def click_link_app_store
        link_app_store.click
    end

    def click_link_google_play
        link_google_play.click
    end
end