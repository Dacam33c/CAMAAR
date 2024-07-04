Given("I am on Cadastro page") do
    visit 'http://localhost:3000/users/sign_up/1'
    sleep 3
end

When("I fill in my password") do
    fill_in "senha_senha", with: "teste2"
end

When("I click the confirmation button") do
    click_button "Confirmar"
end

Then ("My account should be stored in the database") do
    expect(User.exists?(nome: Aluno.find(1).nome )).to eq(true)
end