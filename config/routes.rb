WineReview::Application.routes.draw do

#Start Homework 2
#  get "wines/index"
# get "wines/show"
#  get "wines/edit"
#  get "/wines" => "wines#index", as: 'wines'
#  get "/wines/:id" => "wines#show", as: 'wine'
#  post "/wines" => "wines#create"
#  get "/wines/:id/edit" => "wines#edit", as: 'edit_wine'
#  patch "/wines/:id" => "wines#update"
#  delete "/wines/:id" => "wines#destroy"
#End Homework 2

#Start Homework 3
resources :wines
#End Homework 3 
end
