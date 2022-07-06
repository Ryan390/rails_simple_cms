Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'demo/index'
  resources :subjects do
    member do
      get :delete
    end
  end
  #format.html { render :template => "/layouts/index.html.erb.erb" }
end
