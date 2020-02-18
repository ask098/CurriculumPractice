Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # resources :users
  resources :profiles  do 

    resources :experiences
  end
  
  
  root to: "profiles#index"
end
