#criando o metodo de envio de email
class AlunoMailer < ApplicationMailer
    #definição do email
    def email_cadastro(aluno)
        @aluno = aluno
        mail(to: @aluno.email, subject: 'teste')
      end
end