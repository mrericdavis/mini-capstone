class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render "index.html.erb"
  end
  def mens_shoes_method
    render "menshoe.html.erb"
  end  
  def ladies_shoes_method

    render "ladyshoe.html.erb"
  end
  def kids_shoes_method

    render "kidshoe.html.erb"
  end
  def about_us_method

    render "aboutus.html.erb"
  end
  def contact_us_method

    render "contactus.html.erb"
  end
end


