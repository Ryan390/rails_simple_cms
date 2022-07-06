Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :subjects do
    member do
      get :delete
    end
  end
  resources :pages do
    member do
      get :delete
    end
  end
  end
