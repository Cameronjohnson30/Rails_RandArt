Rails.application.routes.draw do
  devise_for :user
  resources :users
  
  root to: 'styles#index'
      resources :styles do 
      resources :categories 
    end
  resources :categories do 
    resources :ideas
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
