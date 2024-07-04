# The TelasControllher class is responsible for defing functions that import data and send emails
class TelasController < ApplicationController

  def tela_alunos
    @alunos = Aluno.all
  end

end
