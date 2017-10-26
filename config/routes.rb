Rails.application.routes.draw do
  devise_for :usuarios
  root 'paginas_estaticas#principal'
  get '/assinatura_matricula', to: 'paginas_estaticas#assinatura_matricula'
  
  resources :criancas, :path => '' do
    resources :responsaveis, :path => ''
  end
  resources :usuarios
end