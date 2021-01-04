class UserFinancialDataPage < SitePrism::Page
    set_url'/'

    element :title_financial_data, '[data-selenium="user-settings-history-header-title"]'
    element :btn_change_card, '[data-selenium="user-settings-financial-button-cancel-change-credit-card"]'

    def click_btn_change_card
        btn_change_card.click
    end
end