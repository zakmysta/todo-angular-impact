Rails.application.routes.draw do
  get 'home/index'

  namespace :api, defaults: {format: :json} do
    resources :todos, only: [:index, :create]
  end

  root 'home#index'
  get 'index.html', to: 'home#index'
end
