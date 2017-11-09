Rails.application.routes.draw do
  # get 'doses/new'

  # get 'doses/create'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  root to: 'cocktails#index'



resources :cocktails, only: [:index, :new, :create, :show] do
  resources :doses, only: [:new, :create]
end
resources :doses, only: [:destroy]

end
