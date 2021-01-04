Given("I am on the Individual Pagamento page") do
    step %{I register the individual data}
    
    expect(signupfinancialcreditcardpage.title_financial_signup.text).to eq 'Pagamento'
    expect(signupfinancialcreditcardpage.subtitle_financial_signup.text).to eq 'Dados Financeiros'
end

Given("I am on the Legal Entity Pagamento page") do
    step %{I register the legal entity data}

    expect(signupfinancialcreditcardpage.title_financial_signup.text).to eq 'Pagamento'
    expect(signupfinancialcreditcardpage.subtitle_financial_signup.text).to eq 'Dados Financeiros'
end

And("I confirm individual user data") do
    expect(signupfinancialcreditcardpage.data_name_signup.text).to eq 'Testepf'
    expect(signupfinancialcreditcardpage.data_id.text).to eq '482.627.000-31'
    expect(signupfinancialcreditcardpage.data_email.text).to eq "teste" + "#{@timestamp}" + "@mailinator.com"
end

And("I confirm legal entity user data") do
    expect(signupfinancialcreditcardpage.data_name_signup.text).to eq 'Testepj'
    expect(signupfinancialcreditcardpage.data_id.text).to eq '50.906.187/0001-65'
    expect(signupfinancialcreditcardpage.data_email.text).to eq "teste" + "#{@timestamp}" + "@mailinator.com"
end

And("I fill in the Número do Cartão field {string}") do |card_number|
    signupfinancialcreditcardpage.field_credit_card_number.set("#{card_number}")
end

And("I fill in the Nome Impresso no Cartão field {string}") do |card_name|
    signupfinancialcreditcardpage.field_credit_card_name.set("#{card_name}")
end

And("I select the card flag {string}") do |flag|
    signupfinancialcreditcardpage.select_financial_flag.first(:option, "#{flag}").select_option
end

And("I select the expiration month {string}") do |month|
    signupfinancialcreditcardpage.select_month.first(:option, "#{month}").select_option
end

And("I select the expiration year {string}") do |year|
    signupfinancialcreditcardpage.select_year.first(:option, "#{year}").select_option
end

And("I fill in the CVV field {string}") do |cvv|
    signupfinancialcreditcardpage.field_cvv.set("#{cvv}")
end

And("I check the terms and conditions") do
    signupfinancialcreditcardpage.check_checkbox_agree_terms_and_conditions
    
end

When("I click on the Salvar button") do
    step %{I click on the Continuar button}
end

Then("I register the credit card of the individual") do
    steps %{
        Given I am on the Individual Pagamento page
        And I confirm individual user data
        And I fill in the Número do Cartão field "4111 1111 1111 1111"
        And I fill in the Nome Impresso no Cartão field "TestePF"
        And I select the card flag "Visa"
        And I fill in the CVV field "737"
        And I select the expiration month "03"
        And I select the expiration year "2030"
        And I check the terms and conditions
        When I click on the Salvar button
    }
end

Then("I register the credit card of the legal entity") do
    steps %{
        Given I am on the Legal Entity Pagamento page
        And I confirm legal entity user data
        And I fill in the Número do Cartão field "5101 1800 0000 0007"
        And I fill in the Nome Impresso no Cartão field "TestePJ"
        And I select the card flag "Mastercard"
        And I fill in the CVV field "737"
        And I select the expiration month "03"
        And I select the expiration year "2030"
        And I check the terms and conditions
        When I click on the Salvar button
    }
end