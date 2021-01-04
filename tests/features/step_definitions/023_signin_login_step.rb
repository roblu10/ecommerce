Given("I am on the Login page") do
    signinloginpage.load

    expect(signinloginpage.title_signin_login.text).to eq 'Login'
    expect(signinloginpage.subtitle_signin_login.text).to eq 'Já sou cliente HomeRefill.'
end
  
And("I fill in the Email field {string}") do |email|
    signinloginpage.field_email.set("#{email}")
end
  
And("I fill in the Senha field {string}") do |password|
    signinloginpage.field_password.set("#{password}")
    signinloginpage.field_password.send_keys :tab
end
  
And("I click on the Entrar button") do
    signinloginpage.click_btn_login
end