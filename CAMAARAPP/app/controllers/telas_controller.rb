# controle principal das telas
require_relative "ChecagemLogin"
class TelasController < ApplicationController

  #caso um usuario logado como aluno tente acessar diretamente a pagina de gerenciamento ele é redirecionado
  def gerenciamento
    if !ChecagemLogin.testar(current_user)
      redirect_to("http://localhost:3000/user_home")
    end
    
  end

  def tela_alunos
    @alunos = Aluno.all
  end

end
