class ShoesController < ApplicationController
  def shoes_method
    @shoes = Shoe.all
    render "shoe.html.erb"
  end
end


