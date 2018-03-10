Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/items' => 'items#index'
  # post '/items' => 'items#create'   #追加
  # get '/items/new' => 'items#new'
  # get '/items/:id' => 'items#show'
  # get '/items/:id/edit' => 'items#edit' #追加
  # patch '/items/:id' => 'items#update'  #追加
  # delete '/items/:id' => 'items#destroy' #追加
  resources :items
end
