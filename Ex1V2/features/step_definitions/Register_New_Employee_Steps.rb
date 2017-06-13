Dado(/^que eu esteja no site da OrangeHRM$/) do
  @loginPage = LoginPage.new
  @loginPage.load
end

Dado(/^eu acesse com os dados de administrador$/) do
 @loginPage.login('admin', 'admin')
end

Dado(/^acesse a pagina de cadastro de funcionario$/) do
RegisterPage.new.accessRegisterMenu

end

Quando(/^cadastrado um novo "([^"]*)" "([^"]*)"$/) do |funcionario, segundonome|
  RegisterPage.new.FirstNameField.set(funcionario)
  RegisterPage.new.LastNameField.set(segundonome)
  RegisterPage.new.AddSaveButton.click
end

Entao(/^o cadastro sera realizado$/) do
assert_text('Personal Details')
end

