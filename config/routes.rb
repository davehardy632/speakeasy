Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/api/v1/webhooks_test', to: 'webhooks#index'

  # request enpoints for sinatra microservice
  namespace :api do
    namespace :v1 do
      get '/messages', to: "messages#index"
    end
  end
end
