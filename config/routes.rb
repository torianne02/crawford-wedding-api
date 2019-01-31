Rails.application.routes.draw do
  # root 'static_pages#home'

  get 'rsvps/:name', to: 'rsvps#show'
  get '/rsvps', to: 'rsvps#index'
  get '/guest_list', to: 'rsvps#guest_list'
  post '/rsvps', to: 'rsvps#create'

  # FUTURE USE
  # get 'guests/:id', to: 'guests#show'
  # get 'guests', to: 'guests#index'
  # post 'guests/:id', to: 'guests#create'
end
