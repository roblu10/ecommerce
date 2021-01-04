And("I click on the Alterar button") do
    userfinancialdatapage.click_btn_change_card
end
  
And("I change the card number {string}") do |card_number|
    step %{I fill in the Número do Cartão field "#{card_number}"}
end
  
And("I change the holder name {string}") do |holder_name|
    step %{I fill in the Nome Impresso no Cartão field "#{holder_name}"}
end
  
And("I change the card flag {string}") do |card_flag|
    step %{I select the card flag "#{card_flag}"}
end
  
And("I change the CVV {string}") do |cvv|
    step %{I fill in the CVV field "#{cvv}"}
end
  
And("I change the expiration month {string}") do |month|
    step %{I select the expiration month "#{month}"}
end
  
And("I change the expiration year {string}") do |year|
    step %{I select the expiration year "#{year}"}
end
  
Then("I change the financial data and I confirm that it has been changed") do
    steps %{
        And I click on the Alterar button
        And I change the card number "3700 0000 0000 002"
        And I change the holder name "MeuNomeMudou"
        And I change the card flag "Amex"
        And I change the CVV "7373"
        And I change the expiration month "03"
        And I change the expiration year "2030"
        When I click on the Salvar button
        Then I should see the verification message "Seus dados financeiros foram alterados com sucesso."
    }
end