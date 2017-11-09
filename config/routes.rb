Rails.application.routes.draw do
  resources :students, :schoolclasses, only: [:index, :show, :new, :create, :edit]
end
