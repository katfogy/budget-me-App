Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
  resources :categories do
    resources :purchases, only: [:new, :show]
  end
  resources :purchases, except: [:new, :show, :index]
  # Defines the root path route ("/")
  # root "articles#index"
end
