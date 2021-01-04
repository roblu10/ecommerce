And("I change the personal name {string}") do |personal_name|
    step %{I fill in the individual Nome Completo field "#{personal_name}"}
end
  
And("I change the identification {string}") do |identification|
    step %{I fill in the individual CPF field "#{identification}"}
end
  
And("I change the birthdate {string}") do |birthdate|
    step %{I fill in the individual Data de Nascimento field "#{birthdate}"}
end
  
And("I change the first phone number {string}") do |phone1|
    step %{I fill in the individual Telefone field "#{phone1}"}
end
  
And("I change the second phone number {string}") do |phone2|
    step %{I fill in the individual Telefone Secundário field "#{phone2}"}
end
  
And("I change the profile {string}") do |profile|
    step %{I select the profile "#{profile}"}
end
  
And("I click on the Salvar Alterações button") do
    step %{I click on the Continuar button}
end

Then("I confirm that all personal data has been changed") do
    step %{I click on the Dados Pessoais button}
    expect(signupindividualpage.field_personal_name.value).to eq 'MeuNomeMudou'
    expect(signupindividualpage.field_cpf.value).to eq '529.910.680-78'
    expect(signupindividualpage.field_birthdate.value).to eq '30/01/1975'
    expect(signupindividualpage.field_phone_number_1.value).to eq '(19) 8765-4321'
    expect(signupindividualpage.field_phone_number_2.value).to eq '(11) 9234-56789'
    expect(signupindividualpage.select_profile.value).to eq '17'
end

Then("I change the personal data and I confirm that it has been changed") do
    steps %{
        And I change the personal name "MeuNomeMudou"
        And I change the identification "529.910.680-78"
        And I change the birthdate "30/01/1975"
        And I change the first phone number "1987654321"
        And I change the second phone number "11923456789"
        And I change the profile "Casal"
        And I click on the Salvar Alterações button 
        And I should see the verification message "Seus dados cadastrais foram alterados com sucesso."
        Then I confirm that all personal data has been changed
    }
end