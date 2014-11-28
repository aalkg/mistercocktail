Rails.application.routes.draw do
  get 'cocktails/index'

  get 'cocktails/create'

  get 'cocktails/new'

  get 'cocktails/show'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
