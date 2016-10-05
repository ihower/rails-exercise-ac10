Rails.application.routes.draw do

  resources :todos
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/v1" => "welcome#v1"
  get "/v2" => "welcome#v2"
  get "/v3" => "welcome#v3"

  root "people#index"

end
