#classe para cadastrar usuario
class CadastroController < ApplicationController

  #cadastra o usuario do aluno quando ele escolhe uma senha
  #um Aluno no banco de dados nao pode acessar sua conta, ele precisa clicar no email e criar uma senha para se tornar um User
  def cadastro_aluno
    senha, id = params["senha"].values_at("senha", "id")
    aluno = Aluno.find(id)
    #pega os dados do Aluno e usa para criar um User
    usuario = User.new(matricula:aluno.matricula, email:aluno.email, password:senha, password_confirmation:senha, nome:aluno.nome, adm:"false")
    usuario.save!
  end
end
