class UserHeaderSection < SitePrism::Section
    element :link_my_account, 'a[href="javascript:;"]'
    element :link_dashboard, '[title="Dashboard"]'
    element :link_my_refill, '[title="Meu Refil"]'
    element :link_personal_data, '[title="Dados pessoais"]'
    element :link_delivery_data, '[title="Dados de entrega"]'
    element :link_financial_data, '[title="Dados financeiros"]'
    element :link_delivery_schedule, '[title="Agenda de entregas"]'
    element :link_faq, '[title="Perguntas Frequentes"]'
    element :link_contact, '[title="Fale conosco"]'
    element :link_terms_of_use, '[title="Termos de uso"]'
    element :link_privacy_policy, '[title="Política de Privacidade"]'
    element :link_logout, '[title="Sair"]'

    def click_link_my_account
        link_my_account.click
    end

    def click_link_dashboard
        link_dashboard.click
    end

    def click_link_my_refill
        link_my_refill.click
    end

    def click_link_personal_data
        link_personal_data.click
    end

    def click_link_delivery_data
        link_delivery_data.click
    end

    def click_link_financial_data
        link_financial_data.click
    end

    def click_link_delivery_schedule
        link_delivery_schedule.click
    end

    def click_link_logout
        link_logout.click
    end
end

class UserDashboardPage < SitePrism::Page
    set_url'/'

    section :header, UserHeaderSection, '.molecule-header'

    element :link_my_calendar_data,'[data-selenium="user-dashboard-button-calendar-data"]'
    element :link_suspend_calendar_data, '[data-selenium="user-dashboard-button-suspend-calendar-data"]'
    element :link_add_remove_product, '[data-selenium="user-dashboard-button-add-remove-product"]'
    element :link_my_refill, '[data-selenium="user-dashboard-config-list-refill"]'
    element :link_delivery_schedule, '[data-selenium="user-dashboard-config-list-delivery"]'
    element :link_personal_data, '[data-selenium="user-dashboard-config-list-personal-data"]'
    element :link_delivery_data, '[data-selenium="user-dashboard-config-list-delivery-data"]'
    element :link_financial_data, '[data-selenium="user-dashboard-config-list-financial-data"]'

    def click_link_my_calendar_data
        link_my_calendar_data.click
    end

    def click_link_add_remove_product
        link_add_remove_product.click
    end

    def click_link_my_refill
        link_my_refill.click
    end

    def click_link_delivery_schedule
        link_delivery_schedule.click
    end

    def click_link_personal_data
        link_personal_data.click
    end

    def click_link_delivery_data
        link_delivery_data.click
    end

    def click_link_financial_data
        link_financial_data.click
    end
end