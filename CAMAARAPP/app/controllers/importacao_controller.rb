#importação dos dados dos alunos
require_relative "JsonParser"
require_relative "TurmaImporter"

class ImportacaoController < ApplicationController

  # Importação dos dados pelo JSON
  def importar
    lista_turmas = JsonParser.parse('class_members_teste.json')
    lista_turmas.each do |turma|
      TurmaImporter.import(turma)
    end
  end
end

