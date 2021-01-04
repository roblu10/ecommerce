Given("I am on the Cadastro page") do
    steps %{
        Given I am on the Homepage page
        And I add a product
        Then I set the first enabled delivery date
    }

    expect(signupindividualpage.title_user_signup.text).to eq 'Cadastro'
    expect(signupindividualpage.subtitle_user_signup.text).to eq 'Tipo de cadastro'
end

And("I fill in the individual Email field {string}") do |email|
    if email == "random_email"
        @timestamp = Time.now.strftime("%Y%m%d%H%M%S")
        email = "teste" + "#{@timestamp}" + "@mailinator.com"
    end

    signupindividualpage.field_email.set("#{email}")
end
  
And("I fill in the individual Senha field {string}") do |password|
    signupindividualpage.field_password.set("#{password}")
end
  
And("I fill in the individual Nome Completo field {string}") do |personal_name|
    signupindividualpage.field_personal_name.set("#{personal_name}")
end
  
And("I fill in the individual CPF field {string}") do |cpf|
    signupindividualpage.field_cpf.set("#{cpf}")
end
  
And("I fill in the individual Data de Nascimento field {string}") do |birthdate|
    signupindividualpage.field_birthdate.set("#{birthdate}")
end
  
And("I fill in the individual Telefone field {string}") do |phone_number_1|
    signupindividualpage.field_phone_number_1.set("#{phone_number_1}")
end
  
And("I fill in the individual Telefone Secundário field {string}") do |phone_number_2|
    signupindividualpage.field_phone_number_2.set("#{phone_number_2}")
    signupindividualpage.field_phone_number_2.send_keys :tab
end
  
When("I select the profile {string}") do |profile|
    signupindividualpage.select_profile.first(:option, "#{profile}").select_option
end

And("I should see the verification message {string}") do |verification_message|
    expect(page).to have_content "#{verification_message}"
end

And("I fill in the Buscar Endereço field {string}") do |search_address|
    signupindividualpage.field_search_address.set("#{search_address}")
end
  
And("I select the first address") do
    signupindividualpage.click_option_search_address
end
  
When("I click on the Continuar button") do
    signupindividualpage.click_btn_continue
end
  
Then("I confirm that I am on the Pagamento page") do
    expect(signupfinancialcreditcardpage.title_financial_signup.text).to eq 'Pagamento'
    expect(signupfinancialcreditcardpage.subtitle_financial_signup.text).to eq 'Dados Financeiros'
end

Then("I register the individual data") do
    steps %{ 
        Given I am on the Cadastro page
        And I fill in the individual Email field "random_email"
        And I fill in the individual Senha field "123"
        And I fill in the individual Nome Completo field "TestePF"
        And I fill in the individual CPF field "482.627.000-31"
        And I fill in the individual Data de Nascimento field "15/10/1991"
        And I fill in the individual Telefone field "11987654321"
        And I fill in the individual Telefone Secundário field "2212345678"
        And I select the profile "Solteiro"
        And I fill in the Buscar Endereço field "Rua 25 de março, 753"
        And I select the first address
        When I click on the Continuar button
    }
end