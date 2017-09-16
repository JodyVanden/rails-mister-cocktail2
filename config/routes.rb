Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new]
  resources :cocktails do
    resources :doses, only: [:new, :create,:show]
  end
  resources :doses, only: [:destroy]

end
