Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :profiles
 # resources :users
  resources :users  do 
    resources :profiles 
  end
  root to: "profiles#index"
end
