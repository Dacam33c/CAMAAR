#classe para o envio de emails
class EmailController < ApplicationController
  #itera por cada aluno importado do JSON e envia o email
  def mail
    Aluno.all.each do |aluno|
      AlunoMailer.email_cadastro(aluno).deliver_now

    end
  end
end
