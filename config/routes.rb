Rails.application.routes.draw do
  get '/' => 'places#index'
  get '/places' => 'places#index'
  get '/places/new' => 'places#new'
  post '/places' => 'places#create'

  get '/places/:id' => 'places#show'

  get '/places/:id/edit' => 'places#edit'
  patch '/places/:id' => 'places#update'

  delete '/places/:id' => 'places#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
