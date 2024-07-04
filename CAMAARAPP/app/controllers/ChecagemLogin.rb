class ChecagemLogin < ApplicationController
  def self.testar(usuario)
    if usuario.adm == "true"
      return true
    else
      return false
    end
  end
end
