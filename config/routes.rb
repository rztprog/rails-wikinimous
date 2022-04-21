Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  get "new", to: "articles#new",  as: :new_article
  post "new", to: "articles#create"

  get "articles/:id", to: "articles#show", as: :article

  get "articles/:id/edit", to: "articles#edit", as: :edit_article
  patch "articles/:id", to: "articles#update"

  delete "articles/:id", to: "articles#destroy"
  delete "/", to: "articles#destroy_all", as: :delete_all
end
