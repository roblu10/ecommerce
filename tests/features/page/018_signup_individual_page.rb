class SignUpIndividualPage < SitePrism::Page
    set_url'/user/signup/user?date='

    element :title_user_signup, '[data-selenium="signup-personal-title"]'
    element :subtitle_user_signup, '[data-selenium="signup-form-register-description"]'
    element :btn_individual, "#signup-form-register-type-1-label"
    element :btn_facebook_signup, '[data-selenium="signup-form-button-facebook"]'
    element :field_email, '[data-selenium="signup-form-account-access-button-email"]'
    element :field_password, '[data-selenium="signup-form-account-access-button-password"]'
    element :field_personal_name, 'input[name="entity[username]"]' 
    element :field_cpf, '[name="entity[cpf]"]'
    element :field_birthdate, '[name="entity[birthday]"]'
    element :field_phone_number_1, '[name="entity[phone]"]'
    element :field_phone_number_2, '[name="entity[cellphone]"]'
    element :select_profile, '[name="entity[systemprofile]"]'
    element :field_search_address, '.molecule-block--squared--white'
    element :field_address, 'input[name="entity[address]"]'
    element :field_neighborhood, 'input[name="entity[addressNeighborhood]"]'
    element :field_number, 'input[name="entity[addressnumber]"]'
    element :field_complement, 'input[name="entity[addresscomplement]"]'
    element :field_city, 'input[name="entity[addressCity]"]'
    element :field_reference, 'textarea[name="entity[addressreference]"]'
    element :btn_continue, '.atom-button--success-background'

    def click_btn_physical_person
        btn_physical_person.click
    end

    def click_btn_legal_person
        btn_legal_person.click
    end

    def click_btn_facebook_signup
        btn_facebook_signup.click
    end

    def click_option_search_address
        sleep(2)
        field_search_address.send_keys :down
        sleep(2)
        field_search_address.send_keys :enter
    end
    
    def click_btn_continue
        btn_continue.has_button?
        btn_continue.click
    end
end