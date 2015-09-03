Rails.application.routes.draw do
root 'main#index'
resources :users
end
