Rails.application.routes.draw do
  get '/', to: 'lists#index'
  post '/', to: 'names#create'
  patch '/names/:id', to: 'names#update'
  get '/names', to: 'names#index'
  delete '/names/:id', to: 'names#destroy'
end
