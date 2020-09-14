Rails.application.routes.draw do
  root 'application#index'

  devise_for :employees
  devise_for :clients
end
