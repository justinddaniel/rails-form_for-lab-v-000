Rails.application.routes.draw do
  resources :students, :school_classes, only: [:index, :show, :new, :create, :edit]
end
