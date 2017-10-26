Rails.application.routes.draw do
  resources :criancas, :path => '' do
    resources :responsaveis, :path => ''
  end
end