Rails.application.routes.draw do
  root 'application#index'
  devise_for :clients
end
