class UserPersonalDataPage < SitePrism::Page
    set_url'/'

    element :title_personal_data, '[data-selenium="user-settings-history-header-title"]'
end