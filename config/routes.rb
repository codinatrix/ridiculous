Ridiculous::Application.routes.draw do
  root to: 'suppliers#index'
  devise_for :users
  resources :suppliers
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
end
