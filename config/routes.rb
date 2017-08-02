Rails.application.routes.draw do
  resources :customer_users do
    collection {post :import}
  end
  root to:"customer_users#index"
end
