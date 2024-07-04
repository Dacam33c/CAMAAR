#leitura do JSON
class JsonParser
  def self.parse(file_path)
    JSON.parse(File.read(file_path))
  end
end

#testa se o aluno deve ser criado
class TurmaImporter
  def self.import(turma)
    alunos = turma["dicente"]
    alunos.each do |aluno|
      matricula = aluno["matricula"]
      next if Aluno.exists?(matricula: matricula)

      AlunoCreator.create(aluno).save
    end
  end
end