Rails.application.routes.draw do

  namespace :api do

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/user_events" => "user_events#create"
    get "/user_events/:id" => "user_events#show"
    delete "/user_events/:event_id" => "user_events#destroy"

    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id" => "events#update"
    delete "/events/:id" => "events#destroy"

    post "/messages" => "messages#create"
    get "/messages/:id" => "messages#show"
   
    post "/images" => "images#create"
    get "/images/:id" => "images#show"
    patch "/images/:id" => "images#update"
    delete "/images/:id" => "images#destroy"

    get "/conversations" => "conversations#index"
    post "/conversations" => "conversations#create"
    get "/conversations/:id" => "conversations#show"
  
    post "/sessions" => "sessions#create"
  end
  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 

end
