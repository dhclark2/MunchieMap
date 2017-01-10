Rails.application.routes.draw do
  root "pages#landing"

  get "pages/about"
  get "pages/landing"
  get "pages/help"

  resources :stores do
    collection do
      get :lucky
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
end
