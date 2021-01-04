# Browsing individually through the Tryout steps

Given("I am on the Homepage page") do
    homepage.load
end
  
When("I open Tryout pages") do
    #@tryout_food gets a window that was opened by clicking the link
    @tryout_food = window_opened_by do
        homepage.click_link_tryout_food
    end

    @tryout_cleaning = window_opened_by do
        homepage.click_link_tryout_cleaning
    end
    
    @tryout_personal_care = window_opened_by do
        homepage.click_link_tryout_personal_care
    end

    @tryout_clothes_care = window_opened_by do
        homepage.click_link_tryout_clothes_care
    end

    @tryout_baby_and_kids_care = window_opened_by do
        homepage.click_link_tryout_baby_and_kids_care
    end

    @tryout_pet_shop = window_opened_by do
        homepage.click_link_tryout_pet_shop
    end
end

Then("I confirm that I am on the correct pages") do
    #changes the focu to the window that was opened by clicking the link
    within_window @tryout_food do
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq 'O que não pode faltar no seu café da manhã?'

        homepage.click_btn_add_product

        #closing the window
        @tryout_food.close
    end

    within_window @tryout_cleaning do
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq 'E para lavar a louça?'

        homepage.click_btn_add_product
        @tryout_cleaning.close
    end

    within_window @tryout_personal_care do
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq 'Como você cuida de seus cabelos?'

        homepage.click_btn_add_product
        @tryout_personal_care.close
    end

    within_window @tryout_clothes_care do
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq 'Como você deixa as roupas limpas, macias e cheirosas?'

        homepage.click_btn_add_product
        @tryout_clothes_care.close
    end

    within_window @tryout_baby_and_kids_care do
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq 'E para alimentar seus filhos?'

        homepage.click_btn_add_product
        @tryout_baby_and_kids_care.close
    end

    within_window @tryout_pet_shop do
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq 'E para alimentar seus animais?'

        homepage.click_btn_add_product
        @tryout_pet_shop.close
    end
end
  

# Browsing through Suggested Lists

And("I click on the {string} button") do |btn_suggested_list|
    #homepage.btn_next_suggested_list.click -> carousel Next button
            
    while has_no_button? btn_suggested_list
        if (have_button homepage.btn_next_suggested_list) && (homepage.btn_next_suggested_list.visible?)
            homepage.click_btn_next_suggested_list
        end
    end
    
    homepage.click_btn_suggested_list(btn_suggested_list)
end

And("I add a product") do
    homepage.click_btn_add_product
end

Then("I should see the confirmation message {string}") do |title_banner_featured|
    #suggestedlistpage.title_banner_featured.text gets Suggested List title
    #check if Suggested List title is equal to title_banner_featured
    expect(suggestedlistpage.title_banner_featured.text).to eq "#{title_banner_featured}"
end


# Browsing through the complete Tryout steps

When("I click on the Veja nosso shopping inteligente button") do
    homepage.click_btn_tryout
end
  
Then("I confirm that I am on the Tryout page") do
    expect(tryoutpage.title_tryout_questions.text).to eq 'O que é essencial para você?'
    expect(tryoutpage.subtitle_tryout_questions.text).to eq 'Marque uma ou mais opções:'
end


# Accessing the HomeRefill app page on AppStore

When("I click on the AppStore link") do
    @app_store = window_opened_by do
        homepage.click_link_app_store
    end
end
  
Then("I confirm that I am on the HomeRefill app page on AppStore") do
    within_window @app_store do
        expect(page).to have_current_path('https://apps.apple.com/br/app/homerefill/id996027151')

        @app_store.close
    end
end


# Accessing the HomeRefill app page on Google Play

When("I click on the Google Play link") do
    @google_play = window_opened_by do
        homepage.click_link_google_play
    end
end
  
Then("I confirm that I am on the HomeRefill app page on Google Play") do
    within_window @google_play do
        expect(page).to have_current_path('https://play.google.com/store/apps/details?id=br.com.homerefill.homerefill&hl=pt_BR')

        @google_play.close
    end
end