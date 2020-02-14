Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :publications do
    collection do
      get "ofertas", to:"publications#ofertas"
      get "demandas", to: "publications#demandas"
    end
    resources :operations
  end
end
