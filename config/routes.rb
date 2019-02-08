Rails.application.routes.draw do
  # root 'static_pages#home'

  get '/rsvps', to: 'rsvps#index'
  get '/attending', to: 'rsvps#attending'
  post '/rsvps', to: 'rsvps#create'

  # FUTURE USE
  # get 'guests/:id', to: 'guests#show'
  # get 'guests', to: 'guests#index'
  # post 'guests/:id', to: 'guests#create'
end
