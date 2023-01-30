# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   root "articles#index"
#    get "/articles", to: "articles#index"
#    get "/articles/:id", to: "articles#show"
# end

# Rails.application.routes.draw do
#   root "articles#index"

#   resources :articles
# end

Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
end

