class ShoesController < ApplicationController
  def home
    @shoes = [Shoe.first, Shoe.second, Shoe.third]
    render "home.html.erb"
  end

  def index
    @shoes = Shoe.all
    render "index.html.erb"
  end

  def show
    shoes_id = params[:id]
    @shoe = Shoe.find_by(id: shoes_id)
    render "show.html.erb"
  end  


  def mens_shoes_method
    render "menshoe.html.erb"
  end  
  def ladies_shoes_method

    render "ladyshoe.html.erb"
  end
  def kids_shoes_method
    @shoe = Shoe.find_by(id:4)
    @shoe = Shoe.find_by(id:5)
    @shoe = Shoe.find_by(id:6)
    render "kidshoe.html.erb"
  end
  def about_us_method

    render "aboutus.html.erb"
  end
  def contact_us_method

    render "contactus.html.erb"
  end
end


