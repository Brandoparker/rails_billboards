Rails.application.routes.draw do
  root "billboards#index"
  devise_for :users
  resources :billboards
end
