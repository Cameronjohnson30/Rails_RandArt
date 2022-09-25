Rails.application.routes.draw do
  root to: 'styles#index'
  resources :categories do 
    resources :ideas
  end
    resources :styles  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
