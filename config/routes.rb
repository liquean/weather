Rails.application.routes.draw do
  apipie
  resources :users
  post '/auth/login', to: 'authentication#login'
  post '/search', to: 'search#search'
  get '/search_history', to: 'search#get_search_history'
  get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  
