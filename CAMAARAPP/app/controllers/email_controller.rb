class EmailController < ApplicationController

  #função para o envio de emails
  def mail
    Aluno.all.each do |aluno|
      AlunoMailer.email_cadastro(aluno).deliver_now

    end

  end

end
