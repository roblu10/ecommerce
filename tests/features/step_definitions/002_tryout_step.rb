Given("I am on the Tryout page") do
    tryoutpage.load
end
  
When("I select all six Tryout options") do
    tryoutpage.click_all_six_questions
end
  
And("I click on the Começar button") do
    tryoutpage.click_btn_question_tryout_start
end
  
Then("I confirm that I started Tryout steps") do
    expect(page).to have_current_path('/tryout/steps?options=1%2C2%2C3%2C4%2C5%2C6')
end