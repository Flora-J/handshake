Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  resources :users, only: [:show] do
  resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ads#index'
  resources :ads

end
