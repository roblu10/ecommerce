Given("I am on the Set Schedule for individual with credit card page") do
    step %{I register the credit card of the individual}
    expect(signupscheduleconfigurationpage.title_signup_schedule_configuration.text).to eq 'Compra concluída.'
    expect(signupscheduleconfigurationpage.subtitle_signup_schedule_configuration.text).to eq 'Veja como é fácil gerenciar a reposição dos itens mais essenciais de sua casa.'
end

When("I click on Sim Salvar Configurações button") do
    step %{I click on the Continuar button}
end

Then("I confirm that I am on the Dashboard page") do
    expect(page).to have_current_path('/user/dashboard')
end

Given("I am on the Set Schedule for legal entity with credit card page") do
    step %{I register the credit card of the legal entity}
    expect(signupscheduleconfigurationpage.title_signup_schedule_configuration.text).to eq 'Compra concluída.'
    expect(signupscheduleconfigurationpage.subtitle_signup_schedule_configuration.text).to eq 'Veja como é fácil gerenciar a reposição dos itens mais essenciais de sua casa.'
end

Given("I am on the Set Schedule for individual with alelo card page") do
    step %{I register the alelo card of the individual}
    expect(signupscheduleconfigurationpage.title_signup_schedule_configuration.text).to eq 'Compra concluída.'
    expect(signupscheduleconfigurationpage.subtitle_signup_schedule_configuration.text).to eq 'Veja como é fácil gerenciar a reposição dos itens mais essenciais de sua casa.'
end

Given("I am on the Set Schedule for legal entity with alelo card page") do
    step %{I register the alelo card of the legal entity}
    expect(signupscheduleconfigurationpage.title_signup_schedule_configuration.text).to eq 'Compra concluída.'
    expect(signupscheduleconfigurationpage.subtitle_signup_schedule_configuration.text).to eq 'Veja como é fácil gerenciar a reposição dos itens mais essenciais de sua casa.'
end