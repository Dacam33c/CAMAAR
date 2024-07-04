

#importação dos dados dos alunos
class ImportacaoController < ApplicationController

  # Importação dos dados pelo JSON
  def importar
    lista_turmas = JsonParser.parse('class_members_teste.json')
    lista_turmas.each do |turma|
      TurmaImporter.import(turma)
    end
  end
end