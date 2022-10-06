Rails.application.routes.draw do
  devise_for :user
  resources :users
  
  get "profile/:username" => "users#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post
  post "follow/user" => "user#follow_user", as: :follow_user
  root to: 'styles#index'
      resources :styles do 
      resources :categories 
    end
  resources :categories do 
    resources :ideas
  end
resources :posts, only: [:new,:create,:show, :index]
resources :comments, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
