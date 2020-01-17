Rails.application.routes.draw do
  root to: 'productss#index'
  resources :products do
    resources :reviews
  end
end
