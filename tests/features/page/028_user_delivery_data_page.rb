class UserDeliveryDataPage < SitePrism::Page
    set_url'/'

    element :title_delivery_data, '[data-selenium="user-settings-history-header-title"]'
end