class SignUpSchedulePage < SitePrism::Page
    set_url'/user/signup/schedule'

    element :title_signup_schedule, '.page-signup__delivery__title'
    element :btn_last_month, '.ui-datepicker-prev.ui-corner-all'
    element :btn_next_month, '.ui-datepicker-next.ui-corner-all'
    element :btn_choose_date, '[data-selenium="signup-calendar-form-button-choose-date"]'

    def click_first_enabled_delivery_date
        first('[data-handler="selectDay"]').click
    end

    def click_btn_last_month
        btn_last_month.click
    end

    def click_btn_next_month
        btn_next_month.click
    end

    def click_btn_choose_date
        btn_choose_date.click
    end
end