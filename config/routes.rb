Rails.application.routes.draw do
  root to: "galleries#index" #sets root page

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :galleries do
    resources :images
    #resources :images, only: [:new, :create, :show]
  end

  #resources :galleries
  # get "/galleries" => "galleries#index"
  # get "/galleries/new" => "galleries#new" #must come before galleries/:id
  # get "/galleries/:id" => "galleries#show", as: :gallery #order here is important
  # post "/galleries" => "galleries#create"
  # delete "/galleries/:id" => "galleries#destroy"
  # get "/galleries/:id/edit" => "galleries#edit"
  # patch "/galleries/:id" => "galleries#update"
end
