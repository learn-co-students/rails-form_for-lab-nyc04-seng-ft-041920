Rails.application.routes.draw do
  resources :students, only: %i[index show new create edit update]
  resources :school_classes, only: %i[index show new create edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
