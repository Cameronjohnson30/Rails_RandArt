Rails.application.routes.draw do
  devise_for :user
  resources :users
  
  get "profile/:username" => "users#profile", as: :profile
  root to: 'styles#index'
      resources :styles do 
      resources :categories 
    end
  resources :categories do 
    resources :ideas
  end
resources :posts, only: [:new,:create,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
