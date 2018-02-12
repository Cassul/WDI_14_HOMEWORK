Rails.application.routes.draw do
  resources :likes
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'pages#home'
  get '/login', to: 'session#new'
  post '/session', to: 'session#create'

  resources :projects #, only: [:new, :create] #except: [:new, :create] if you want except some
  resources :users
  resources :comments, except: [:index]
end
