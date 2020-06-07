Rails.application.routes.draw do
  resources :school_classes, only: [:index, :show, :edit, :update, :new, :create]
  resources :students, only: [:index, :show, :edit, :update, :new, :create]
end
