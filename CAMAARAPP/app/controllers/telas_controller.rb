# The TelasControllher class is responsible for defing functions that import data and send emails
require_relative "ChecagemLogin"
class TelasController < ApplicationController

  def gerenciamento
    if !ChecagemLogin.testar(current_user)
      redirect_to("http://localhost:3000/user_home")
    end
    
  end

  def tela_alunos
    @alunos = Aluno.all
  end

end
