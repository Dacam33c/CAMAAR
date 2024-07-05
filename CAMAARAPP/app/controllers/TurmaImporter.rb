require_relative "AlunoCreator"

#testa se o aluno deve ser criado
class TurmaImporter
  #definindo a função para importação
  def self.import(turma)
    alunos = turma["dicente"]
    alunos.each do |aluno|
      matricula = aluno["matricula"]
      #testa se o aluno ja existe baseado na matrícula(assume que matrículas são únicas)
      next if Aluno.exists?(matricula: matricula)

      AlunoCreator.create(aluno).save
    end
  end
end