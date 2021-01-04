class SignUpFinancialCreditCardPage < SitePrism::Page
    set_url'/user/signup/financial'

    element :title_financial_signup, '[data-selenium="signup-financial-title"]'
    element :data_name_signup, '[data-selenium="signup-financial-refill-personal-data-name"]'
    element :data_id, '[data-selenium="signup-financial-refill-personal-data-cpf"]'
    element :data_email, '[data-selenium="signup-financial-refill-personal-data-email"]'
    element :data_shipping_address, '[data-selenium="signup-financial-refill-shipping-address"]'
    element :data_total_quantity, '[data-selenium="signup-financial-refill-total-quantity"]'
    element :data_total_price, '[data-format="currency"]'
    element :subtitle_financial_signup, '.atom-legend'
    
    element :field_voucher_code, '[data-selenium="form-voucher-code"]'
    element :btn_voucher_code, '[data-selenium="form-voucher-code-button-submit"]'
    
    element :btn_credit_card, '#creditcard-icon'
    element :field_credit_card_number, 'input[data-encrypted-name="number"]'
    element :field_credit_card_name, 'input[data-encrypted-name="holderName"]'
    element :select_financial_flag, '[name="financial[flag]"]'
    element :select_month, '[data-encrypted-name="expiryMonth"]'
    element :select_year, '[data-encrypted-name="expiryYear"]'
    element :field_cvv, '[data-encrypted-name="cvc"]'
    
    element :checkbox_agree_terms_and_conditions, '#signup-form-payment-agree-input'

    def check_checkbox_agree_terms_and_conditions
        checkbox_agree_terms_and_conditions.check(allow_label_click: true)
    end
end
