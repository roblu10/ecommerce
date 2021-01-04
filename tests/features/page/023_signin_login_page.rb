class SignInLoginPage < SitePrism::Page
    set_url'/login'

    element :title_signin_login, '[data-selenium="signin-title-login"]'
    element :subtitle_signin_login, '.page-signin__title'
    element :field_email, '[data-selenium="signin-form-email"]'
    element :field_password, '[data-selenium="signin-form-password"]'
    element :btn_login, '[data-selenium="signin-form-button-login"]'
    element :btn_forgot_password, '[data-selenium="signin-form-button-forgot-password"]'
    element :btn_start_here, '[data-selenium="signin-form-button-start"]'

    def click_btn_login
        btn_login.click
    end

    def click_btn_forgot_password
        btn_forgot_password.click
    end

    def click_btn_start_here
        btn_start_here.click
    end
end
