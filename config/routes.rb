Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :menus, only: [:new, :create]
  end

  resources :menus, except: [:new, :create]

  # SOLO USO NESTING PARA LAS ACCIONES DEL HIJO: NEW CREATE INDEX

end
