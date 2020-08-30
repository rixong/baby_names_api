Rails.application.routes.draw do
  get '/', to: 'lists#index'
  post '/', to: 'names#create'
  patch '/', to: 'names#update'
  get '/names', to: 'names#index'
  
end
