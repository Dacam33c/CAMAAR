Rails.application.routes.draw do
  get 'questions/create'
  get "/users/sign_up/:id_aluno", to: "telas#cadastro", as:"id_aluno"

  devise_for :users 
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get '/gerenciamento', to: 'telas#gerenciamento'
  

  post "cadastro/cadastro_aluno"

  get '/tela_alunos', to: 'telas#tela_alunos'

  get '/user_home', to: 'telas#user_home'
  get '/user/tela_alunos', to: 'telas#user_home'
  get '/criar_formulario', to: 'telas#criar_formulario'

  post 'import', to: 'import_methods#importar'
  post 'importacao/importar'
  post 'email/mail'

  resource :id
  resources :alunos
  resource :senha
  resources :users

  get "/confirmar_senha", to: 'telas#cadastro_aluno'

  resources :questions, only: [:index, :create] do
    collection do
      post :submit
      get :show_answers
    end
  end

  get '/show_answers', to: 'questions#show_answers', as: 'show_answers'
  post '/submit_questions', to: 'questions#submit'

end
