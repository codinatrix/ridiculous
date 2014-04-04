Ridiculous::Application.routes.draw do
  root to: 'suppliers#index'
  resources :suppliers
end
