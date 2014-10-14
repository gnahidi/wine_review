WineReview::Application.routes.draw do

#resources :reviews
#Start Homework 2
#  get "wines/index"
#   get "wines/show"
#  get "wines/edit"
#  get "/wines" => "wines#index", as: 'wines'
#  get "/books/new" => "books#new", as: 'new_book'
#  get "/wines/:id" => "wines#show", as: 'wine'
#  post "/wines" => "wines#create"
#  get "/wines/:id/edit" => "wines#edit", as: 'edit_wine'
#  patch "/wines/:id" => "wines#update"
#  delete "/wines/:id" => "wines#destroy"
#End Homework 2

#Start Homework 3
resources :wines do
#    resources :reviews
    get 'page/:page', :action => :index, :on => :collection
end
root 'wines#index'
#End Homework 3 
end
