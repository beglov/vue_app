Rails.application.routes.draw do
  root 'home#index'

  devise_for :employees
  devise_for :clients
end
