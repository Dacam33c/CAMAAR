#checa se o usuario é ou não adm e retorna true se for
class ChecagemLogin < ApplicationController
  #definição da função
  def self.testar(usuario)
    if usuario.adm == "true"
      return true
    else
      return false
    end
  end
end
