class SignUpLegalEntityPage < SitePrism::Page
    set_url'/user/signup/user?date='

    element :btn_legal_entity, "#signup-form-register-type-2-label"
    element :field_social_name, '[data-selenium="signupt-form-enterprise-social-name"]'
    element :field_cnpj, '[data-selenium="signupt-form-enterprise-cpf"]'
    element :field_state_tax_number, '[data-selenium="user-settings-personal-form-stateTaxNumber"]'
    element :field_phone_number_1, '[data-selenium="signupt-form-enterprise-phone"]'
    element :field_phone_number_2, '[data-selenium="signupt-form-enterprise-phone-2"]'

    def click_btn_legal_entity
        btn_legal_entity.click
    end
end