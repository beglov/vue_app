Rails.application.routes.draw do
  root 'home#index'

  devise_for :employees
  devise_for :clients

  resources :employees, :clients do
    get :dashboard, on: :collection
  end
end
