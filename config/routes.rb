Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'

  root "articles#index"
  resources :articles do
    resources :comments
  end
end
