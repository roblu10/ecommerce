class TryoutStepsPage < SitePrism::Page
    set_url'/tryout/steps?options=1%2C2%2C3%2C4%2C5%2C6'

    element :title_tryout_step_header, '[data-selenium="tryout-steps-header-title"]'
    element :subtitle_tryout_step_header, '[data-selenium="tryout-steps-header-subtitle"]'
    element :btn_tryout_next_department, '[data-selenium="tryout-steps-button-next-department"]'
    element :btn_tryout_next_step, '[data-selenium="tryout-steps-button-next"]'
    element :btn_tryout_previous_step, '[data-selenium="tryout-steps-button-previous"]'
    element :btn_tryout_exit, '[data-selenium="tryout-steps-button-exit"]'
    element :btn_tryout_complete,'.layout-width.atom-button--colored.page-tryout__step__header__button-complete'
    element :field_tryout_search, 'input[name="search-tryout"]'
    element :sort, '.selection'
    element :qty_tryout_step, '#tryout-total'

    def click_btn_tryout_next_department
        btn_tryout_next_department.click
    end

    def click_btn_tryout_exit
        btn_tryout_exit.click
    end

    def click_btn_tryout_next_step
        btn_tryout_next_step.click
    end

    def click_btn_tryout_previous_step
        btn_tryout_previous_step.click
    end

    def click_btn_tryout_complete
        btn_tryout_complete.click
    end  
    
    def submit_field_tryout_search(text)
        field_tryout_search.set("#{text}")
        field_tryout_search.send_keys :enter
    end

    def select_sort(order)
        sort.click
        find('.select2-results__option', :text => "#{order}").click
    end
end