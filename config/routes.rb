Rails.application.routes.draw do
  root "pages#home"

  namespace :api do 
    get '/read' => 'pages#read'
    post '/create' => 'pages#create'
    post '/delete' => 'pages#delete'
    put '/update' => 'pages#update'
  end
 
end
