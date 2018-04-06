Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :rooms, only: [:index, :show, :create, :update, :destroy], shallow: true do
    resources :messages, only: [:index, :show, :create, :update, :destroy]
  end
  
  mount ActionCable.server => '/cable'
end
