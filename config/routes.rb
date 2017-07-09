Rails.application.routes.draw do
  get "/" => "shoes#index"
  get "/shoes" => "shoes#index"
  get "/menshoe.html.erb" => "shoes#mens_shoes_method"
  get "/ladyshoe.html.erb" => "shoes#ladies_shoes_method"
  get "/kidshoe.html.erb" => "shoes#kids_shoes_method"
  get "/aboutus.html.erb" => "shoes#about_us_method"
  get "/contactus.html.erb" => "shoes#contact_us_method"
end
