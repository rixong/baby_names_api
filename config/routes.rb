Rails.application.routes.draw do
  get '/', to: 'lists#index'
  post '/', to: 'names#create'
end
