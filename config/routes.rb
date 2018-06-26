Rails.application.routes.draw do
  resources :clients, only: [:index, :new]
end
