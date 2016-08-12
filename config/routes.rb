Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root to: 'codexes#home'
  get '/', to: 'codexes#home'
  get '/search', to: 'codexes#search'
  get '/search/:class', to: 'codexes#search'

  resources :decks
  resources :cards
  resources :users

  # User routes
  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#sign_in!'
  get '/sign_up', to: 'users#sign_up'
  post '/sign_up', to: 'users#sign_up!'
  get '/sign_out', to: 'users#sign_out'


end
