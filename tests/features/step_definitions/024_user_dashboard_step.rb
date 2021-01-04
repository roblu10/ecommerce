Given("I am on the Dashboard page") do
    userdashboardpage.load
    
    homepage.header.click_link_login
    
    if @timestamp == nil
        @email_login = "atendimento@hotmail.com.tmp"
    else
        @email_login = "teste#{@timestamp}@mailinator.com"
    end
    
    steps %{
        And I fill in the Email field "#{@email_login}"
        And I fill in the Senha field "123"
        And I click on the Entrar button
    }
end
  
When("I click on the Meu Refil button") do
    userdashboardpage.click_link_my_refill
end
  
Then("I confirm that I am on the Meu Refil page") do
    expect(page).to have_current_path('/user/refill')
end
  
When("I click on the Agenda de Entregas button") do
    userdashboardpage.click_link_delivery_schedule
end
  
Then("I confirm that I am on the Agenda de Entregas page") do
    expect(page).to have_current_path('/user/schedule')
end
  
When("I click on the Dados Pessoais button") do
    userdashboardpage.click_link_personal_data
end
  
Then("I confirm that I am on the Dados Pessoais page") do
    expect(page).to have_current_path('/user/settings/personal')
end
  
When("I click on the Dados de Entregas button") do
    userdashboardpage.click_link_delivery_data
end
  
Then("I confirm that I am on the Dados de Entregas page") do
    expect(page).to have_current_path('/user/settings/delivery')
end
  
When("I click on the Dados Financeiros button") do
    userdashboardpage.click_link_financial_data
end
  
Then("I confirm that I am on the Dados Financeiros page") do
    expect(page).to have_current_path('/user/settings/financial')
end