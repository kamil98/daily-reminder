Rails.application.routes.draw do
  get '/messages/create', to: 'messages#create'
end
