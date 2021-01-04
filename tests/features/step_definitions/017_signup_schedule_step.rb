And("I click on the Bag") do
    homepage.header.click_bag
end
  
And("I click on the Finalizar Pedido button") do
    homepage.bag_open.click_bag_check_out
end

And("I confirm that I am on the Schedule Signup page") do
    expect(signupschedulepage.title_signup_schedule.text).to eq "Selecione a data\nde entrega do\nseu refil"
end

And("I select first enabled delivery date") do
    signupschedulepage.click_first_enabled_delivery_date
end

Then("I click on the Escolher data button") do
    signupschedulepage.click_btn_choose_date
end

And("I click on the Next Month button") do
    signupschedulepage.click_btn_next_month
end
  
Then("I set the first enabled delivery date") do
    steps %{
        And I click on the Bag
        And I click on the Finalizar Pedido button 
        And I confirm that I am on the Schedule Signup page 
        And I select first enabled delivery date
        Then I click on the Escolher data button
    }
end