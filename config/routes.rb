Ridiculous::Application.routes.draw do
  root to: 'suppliers#index'
  devise_for :users
  resources :suppliers
end
