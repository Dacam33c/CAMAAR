class UserHomeController < ApplicationController
  
  #definindo os dados que precisamos na view do aluno
  def user_home
    @alunos = Aluno.all
    @user = current_user
  end

end
