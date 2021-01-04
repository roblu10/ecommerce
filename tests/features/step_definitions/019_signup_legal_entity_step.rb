When("I click on the Pessoa Jurídica button") do
    signuplegalentitypage.click_btn_legal_entity
end
  
And("I fill in the legal entity Email field {string}") do |email|
    step %{I fill in the individual Email field "#{email}"}
end
  
And("I fill in the legal entity Senha field {string}") do |password|
    step %{I fill in the individual Senha field "#{password}"}
end
  
And("I fill in the legal entity Razão Social field {string}") do |social_name|
    signuplegalentitypage.field_social_name.set("#{social_name}")
end
  
And("I fill in the legal entity CNPJ field {string}") do |cnpj|
    signuplegalentitypage.field_cnpj.set("#{cnpj}")
end
  
And("I fill in the legal entity Inscrição Estadual field {string}") do |state_tax_number|
    signuplegalentitypage.field_state_tax_number.set("#{state_tax_number}")
end
  
And("I fill in the legal entity Telefone field {string}") do |phone_1|
    signuplegalentitypage.field_phone_number_1.set("#{phone_1}")
end
  
And("I fill in the legal entity Telefone Secundário field {string}") do |phone_2|
    signuplegalentitypage.field_phone_number_2.set("#{phone_2}")
    signuplegalentitypage.field_phone_number_2.send_keys :enter
end

Then("I register the legal entity data") do
    steps %{
        Given I am on the Cadastro page
        When I click on the Pessoa Jurídica button
        And I fill in the legal entity Email field "random_email"
        And I fill in the legal entity Senha field "123"
        And I fill in the legal entity Razão Social field "TestePJ"
        And I fill in the legal entity CNPJ field "50.906.187/0001-65"
        And I fill in the legal entity Inscrição Estadual field "361015580116"
        And I fill in the legal entity Telefone field "1987654321"
        And I fill in the legal entity Telefone Secundário field "11923456789"
        And I fill in the Buscar Endereço field "Rua 25 de março, 753"
        And I select the first address
        And I click on the Continuar button
    }
end