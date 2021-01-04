class SignUpFinancialAleloCardPage < SitePrism::Page
    set_url'/user/signup/financial'

    element :btn_alelo_card, '.choose-payment-method.float-right.green'
    element :checkbox_agree_terms_and_conditions_alelo_card, '[data-id="alelo-signup-form-payment-agree-input"]'

    def click_btn_alelo_card
        btn_alelo_card.click
    end

    def check_checkbox_agree_terms_and_conditions_alelo_card
        checkbox_agree_terms_and_conditions_alelo_card.check(allow_label_click: true)
    end
end