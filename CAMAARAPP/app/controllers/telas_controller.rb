class TelasController < ApplicationController
  def gerenciamento
    
  end

  def tela_alunos
    @alunos = Aluno.all
  end

  def importar

    Aluno.all.each do |aluno|
      aluno.destroy
    end 

    lista_turmas = JSON.parse(File.read('class_members_teste.json'))
    lista_turmas.each do |turma|
      lista_alunos = turma["dicente"]

      lista_alunos.each do |aluno|
        cria_aluno = Aluno.new(nome:aluno["nome"], curso:aluno["curso"], matricula:aluno["matricula"], usuario:aluno["usuario"], formacao:aluno["formacao"], ocupacao:aluno["ocupacao"], email:aluno["email"], senha:"none")
        cria_aluno.save
      end
    end
  end

end