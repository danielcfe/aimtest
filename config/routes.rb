Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  'login', to: 'sessions#show', as: :session_show
  post 'login', to: 'sessions#create', as: :login

  namespace :rest, constraints: { format: 'json' } do
    post 'login', to: 'auths#login', as: :api_login
    post  'verify_user/:email', to: 'biometrics#verify_user', as: :verify_user, constraints: { :email => /[^\/]+/  }
  end

end
