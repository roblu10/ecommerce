And("I change the delivery data {string}") do |search_address|
    signupindividualpage.field_search_address.send_keys [:control, 'a'], :delete
    signupindividualpage.field_search_address.set("#{search_address}")
end

And("I change the address complement {string}") do |address_complement|
    signupindividualpage.field_complement.set("#{address_complement}")
end
  
And("I change the address reference {string}") do |address_reference|
    signupindividualpage.field_reference.set("#{address_reference}")
end

Then("I confirm that all delivery data has been changed") do
    step %{I click on the Dados de Entregas button}
    expect(signupindividualpage.field_search_address.value).to eq 'Av. Amador Bueno da Veiga, 1973 - Penha de França, São Paulo - SP, 03635-001, Brasil'
    expect(signupindividualpage.field_address.value).to eq 'Avenida Amador Bueno da Veiga'
    expect(signupindividualpage.field_neighborhood.value).to eq 'Penha de França'
    expect(signupindividualpage.field_number.value).to eq '1973'
    expect(signupindividualpage.field_complement.value).to eq 'Ao lado da Caixa Econômica Federal.'
    expect(signupindividualpage.field_city.value).to eq 'São Paulo'
    expect(signupindividualpage.field_reference.value).to eq 'Eu sou uma referência.'
end

Then("I change the delivery data and I confirm that it has been changed") do
    steps %{
        And I change the delivery data "Avenida Amador Bueno da Veiga, 1973"
        And I select the first address
        And I change the address complement "Ao lado da Caixa Econômica Federal."
        And I change the address reference "Eu sou uma referência."
        And I click on the Salvar Alterações button 
        And I should see the verification message "Seus dados de entrega foram alterados com sucesso."
        Then I confirm that all delivery data has been changed
    }
end
  