Rails.application.routes.draw do
  
  get "tasks", to: "tasks#index"
  resources :tasks, only: [:new, :create, :edit, :update, :destroy]
  # ...
  post "tasks/:id/toggle", to: "tasks#toggle"
end
