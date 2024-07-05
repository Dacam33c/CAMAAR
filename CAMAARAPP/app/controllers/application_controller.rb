#classe de controle basica da aplicação
class ApplicationController < ActionController::Base
    #definição da função
    def after_sign_in_path_for(resource)
        #define pra onde redirecionar o usuario de acordo com o tipo(adm/aluno)
        if resource.adm == "false"
          "http://localhost:3000/user_home"
        else
          "http://localhost:3000/gerenciamento"
        end
      end
      
end
