#cria o Aluno
class AlunoCreator
  #pega todos os dados do aluno
  def self.create(aluno_params)
    Aluno.new(
      nome: aluno_params["nome"],
      curso: aluno_params["curso"],
      matricula: aluno_params["matricula"],
      usuario: aluno_params["usuario"],
      formacao: aluno_params["formacao"],
      ocupacao: aluno_params["ocupacao"],
      email: aluno_params["email"],
      senha: "none"
    )
  end
end

