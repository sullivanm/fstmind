
Fstmind::Application.routes.draw do
  resources :comments
  
  resources :posts do
    resources :comments
  end

  resources :posts
  root 'home#index'
  devise_for :users
  resources :industries
  
  devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)

    get "home/index"
    get "static_page/posts"
    get "static_page/blog"
    get "static_page/questions"
    get "post/index"
    get "post/show"
end
