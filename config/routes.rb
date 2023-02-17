Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get "/travel", to: "travel#index"
  get '/search' => 'travel#search'
  
  root "articles#index"

  resources :articles do
    resources :comments
  end
end

