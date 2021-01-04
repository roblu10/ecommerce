And("I click on the Cartão Alelo button") do
    signupfinancialalelocardpage.click_btn_alelo_card
end
  
And("I fill in the Número do Cartão Alelo field {string}") do |card_number|
    step %{I fill in the Número do Cartão field "#{card_number}"}
end
  
And("I fill in the Nome Impresso no Cartão Alelo field {string}") do |card_name|
    step %{I fill in the Nome Impresso no Cartão field "#{card_name}"}
end
  
And("I select the expiration month of the alelo card {string}") do |month|
    step %{I select the expiration month "#{month}"}
end
  
And("I select the expiration year of the alelo card {string}") do |year|
    step %{I select the expiration year "#{year}"}
end

And("I fill in the CVV field of the alelo card {string}") do |cvv|
    step %{I fill in the CVV field "#{cvv}"}
end

And("I check the terms and conditions alelo card") do
    signupfinancialalelocardpage.check_checkbox_agree_terms_and_conditions_alelo_card
end

Then("I register the alelo card of the individual") do
    steps %{
        Given I am on the Individual Pagamento page
        And I confirm individual user data
        And I click on the Cartão Alelo button
        And I fill in the Número do Cartão Alelo field "5066 9911 1111 1118"
        And I fill in the Nome Impresso no Cartão Alelo field "TestePF"
        And I fill in the CVV field of the alelo card "737"
        And I select the expiration month of the alelo card "03"
        And I select the expiration year of the alelo card "2030"
        And I check the terms and conditions alelo card
        When I click on the Salvar button
    }
end

Then("I register the alelo card of the legal entity") do
    steps %{
        Given I am on the Legal Entity Pagamento page
        And I confirm legal entity user data
        And I click on the Cartão Alelo button
        And I fill in the Número do Cartão Alelo field "5066 9911 1111 1118"
        And I fill in the Nome Impresso no Cartão Alelo field "TestePJ"
        And I fill in the CVV field of the alelo card "737"
        And I select the expiration month of the alelo card "03"
        And I select the expiration year of the alelo card "2030"
        And I check the terms and conditions alelo card
        When I click on the Salvar button
    }
end