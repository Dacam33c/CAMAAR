#criando o metodo de envio de email
class AlunoMailer < ApplicationMailer
    def email_cadastro(aluno)
        @aluno = aluno
        mail(to: @aluno.email, subject: 'teste')
      end
end