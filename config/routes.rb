Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  get 'user/destroy'


  get '/login', to: 'page#login'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  get '/dashboard', to: 'dashboard#index'

  get '/api/speakers', to: 'api/speakers#get_speakers'

  get '/speakers', to: 'page#speakers'

  get '/payment', to: 'page#payment'
  resources :charges

  get '/gettickets', to:'page#pdf_tickets'

  get '/',to: 'page#index'
end
