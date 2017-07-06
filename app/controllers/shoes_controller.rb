class ShoesController < ApplicationController
  def shoes_method
    @shoes = Shoe.all
    render "shoe.html.erb"
  end
  def mens_shoe_method
    render "menshoe.html.erb"
  end  
  def ladies_shoe_method

    render "ladyshoe.html.erb"
  end
  def kids_shoe_method

    render "kidshoe.html.erb"
  end
  def about_us_method

    render "aboutus.html.erb"
  end
  def contact_us_method

    render "contactus.html.erb"
  end
end


