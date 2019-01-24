Rails.application.routes.draw do
  root 'static_pages#home'

  get 'guests/:id', to: 'guests#show'
  get 'guests', to: 'guests#index'
  post 'guests/:id', to: 'guests#create'
end
