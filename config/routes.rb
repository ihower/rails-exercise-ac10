Rails.application.routes.draw do

  mount ActionCable.server => "/cable"

  resources :todos
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/v1" => "welcome#v1"
  get "/v2" => "welcome#v2"
  get "/v3" => "welcome#v3"
  get "/v4" => "welcome#v4"

  root "people#index"

end
