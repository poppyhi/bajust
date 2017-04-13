Rails.application.routes.draw do
  get 'band/top'
  get 'band/new'
  post 'bands' => 'band#create'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get '/profile/:id' => 'users#show', as: 'user_show'

end
