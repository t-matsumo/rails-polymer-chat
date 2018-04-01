Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :rooms, only: [:index, :show, :create, :update, :destroy]
  
  mount ActionCable.server => '/cable'
end
