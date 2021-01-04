class TryoutPage < SitePrism::Page
    set_url'/tryout'
    
    element :title_tryout_questions, '[data-selenium="tryout-questions-header-title"]'
    element :subtitle_tryout_questions, '[data-selenium="tryout-questions-header-text"]'
    element :question_tryout_food, '#tryout-question-form-label-1'
    element :question_tryout_cleaning, '#tryout-question-form-label-2'
    element :question_tryout_personal_care, '#tryout-question-form-label-3'
    element :question_tryout_clothes_care, '#tryout-question-form-label-4'
    element :question_tryout_baby_and_kids_care, '#tryout-question-form-label-5'
    element :question_tryout_pet_shop, '#tryout-question-form-label-6'
    element :btn_question_tryout_start, '[data-selenium="tryout-questions-form-button-submit"]'
    
    def click_all_six_questions
        question_tryout_food.click
        question_tryout_cleaning.click
        question_tryout_personal_care.click
        question_tryout_clothes_care.click
        question_tryout_baby_and_kids_care.click
        question_tryout_pet_shop.click
    end

    def click_btn_question_tryout_start
        btn_question_tryout_start.click
    end
end