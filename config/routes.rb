Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {:format => :json} do 

    resources :users do
      resources :drafts, :controller => :ad, type: 'Draft'
    end

    post '/login', to: 'sessions#login'
    post '/guest', to: 'sessions#guest'
    get '/auth/github/callback', to: 'sessions#github'
    get '/authenticate', to: 'sessions#authenticate'

    resources :ads

  end
end