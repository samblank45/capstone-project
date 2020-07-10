Rails.application.routes.draw do

  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id/edit" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/user_events" => "user_events#create"
    get "/user_events/:id" => "user_events#show"
    delete "/user_events/:id" => "user_events#destroy"

    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id/edit" => "events#update"
    delete "/events/:id" => "events#destroy"

    get "/messages/:id" => "messages#show"
    post "/messages" => "messages#create"


    post "/sessions" => "sessions#create"
  end

end
