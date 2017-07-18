Rails.application.routes.draw do
  get "/" => "shoes#home"
  get "/shoes" => "shoes#index"
  get "/shoes/new" => "shoes#new"
  post "/shoes" => "shoes#create"
  get "/shoes/:id" => "shoes#show"
  get "/shoes/:id/edit" => "shoes#edit"
  patch "/shoes/:id" => "shoes#update"
  delete "/shoes/:id" => "shoes#destroy"
  
  get "/menshoe.html.erb" => "shoes#mens_shoes_method"
  get "/ladyshoe.html.erb" => "shoes#ladies_shoes_method"
  get "/kidshoe.html.erb" => "shoes#kids_shoes_method"
  get "/aboutus.html.erb" => "shoes#about_us_method"
  get "/contactus.html.erb" => "shoes#contact_us_method"
  get "/shoes_search" => "shoes#search"
end
