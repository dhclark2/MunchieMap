Rails.application.routes.draw do
  root "stores#index"
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'
end
