# Rails.application.routes.draw do
  # devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   root "articles#index"
#    get "/articles", to: "articles#index"
#    get "/articles/:id", to: "articles#show"
# end

# Rails.application.routes.draw do
  # devise_for :users
#   root "articles#index"

#   resources :articles
# end

Rails.application.routes.draw do
  devise_for :users

  get "/travel", to: "travel#index"
  get '/search' => 'travel#search'
  
  root "articles#index"

  resources :articles do
    resources :comments
  end
end

