Rails.application.routes.draw do
  root to: 'styles#index'
  resources :styles do 
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
