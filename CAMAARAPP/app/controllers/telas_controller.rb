class TelasController < ApplicationController
  #definindo os dados que precisamos na view do aluno
  def user_home
    @alunos = Aluno.all
    @user = current_user
  end

  #definindo os dados da tela alunos(serve so para testes)
  def tela_alunos
    @alunos = Aluno.all
  end

  #importação dos dados pelo JSON
  def importar

        lista_turmas = JSON.parse(File.read('class_members_teste.json')) #efetivamente le os dados da base de testes, caso queira usar outro arquivo mudar aqui
        lista_turmas.each do |turma| 

          lista_alunos = turma["dicente"]
          lista_alunos.each do |aluno|
          matricula = aluno["matricula"]
            if !Aluno.exists?(matricula: matricula ) #checa se o aluno ja existe pela matricula e cadastra ele caso não exista
              cria_aluno = Aluno.new(nome:aluno["nome"], curso:aluno["curso"], matricula:matricula, usuario:aluno["usuario"], formacao:aluno["formacao"], ocupacao:aluno["ocupacao"], email:aluno["email"], senha:"none")
              cria_aluno.save
            end
          end
        end
  end


  #função para o envio de emails
  def mail
    Aluno.all.each do |aluno|
      AlunoMailer.email_cadastro(aluno).deliver_now

    end

  end

  #cadastra o usuario do aluno quando ele escolhe uma senha
  #um Aluno no banco de dados nao pode acessar sua conta, ele precisa clicar no email e criar uma senha para se tornar um User
  def cadastro_aluno
    @senha, @id = params["senha"].values_at("senha", "id")
    @aluno = Aluno.find(@id)
    #pega os dados do Aluno e usa para criar um User
    usuario = User.new(matricula:@aluno.matricula, email:@aluno.email, password:@senha, password_confirmation:@senha, nome:@aluno.nome, adm:"false")
    usuario.save!
  end
end
