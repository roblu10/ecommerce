class SignUpScheduleConfigurationPage < SitePrism::Page
    set_url'/user/signup/schedule/configuration?'

    element :title_signup_schedule_configuration, '.page-user-schedule__header__title'
    element :subtitle_signup_schedule_configuration, '.page-user-schedule__header__content'
    element :btn_how_to_manage, '[data-selenium="signup-schedule-button-how-to-manage"]'
    element :btn_custom_schedule, '#schedule-shipping-form-profile-day-label'
    element :btn_fixed_day_month, '#schedule-shipping-form-profile-personal-label'
    element :select_custom_period, '#schedule-shipping-form-personal-period-1-select'
    element :select_custom_week, '#schedule-shipping-form-personal-weekly-1-select'
    element :select_custom_fixed_day, '#schedule-shipping-form-personal-period-fixed-select'
    element :btn_monday, '#schedule-shipping-form-personal-day-2-input'
    element :btn_tuesday, '#schedule-shipping-form-personal-day-3-input'
    element :btn_wednesday, '#schedule-shipping-form-personal-day-4-input'
    element :btn_thursday, '#schedule-shipping-form-personal-day-5-input'
    element :btn_friday, '#schedule-shipping-form-personal-day-6-input'
    element :btn_saturday, '#schedule-shipping-form-personal-day-7-input' 

    def click_btn_custom_schedule
        btn_custom_schedule.click
    end

    def click_btn_fixed_day_month
        btn_fixed_day_month.click
    end

    def click_btn_monday
        btn_monday.click
    end

    def click_btn_tuesday
        btn_tuesday.click
    end

    def click_btn_wednesday
        btn_wednesday.click
    end
    
    def click_btn_thursday
        btn_thursday.click
    end

    def click_btn_friday
        btn_friday.click
    end

    def click_btn_saturday
        btn_saturday.click
    end
end