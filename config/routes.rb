Rails.application.routes.draw do
  resources :favorites
  resources :colleges
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :favorites
  # resources :colleges do 
  #   collection do 
  #     get :search
  #   end
  # end
  
  # resources :users
end
