class ShoesController < ApplicationController
  def home
    @shoes = [Shoe.first, Shoe.second, Shoe.third]
    render "home.html.erb"
  end
  
  def edit
    shoe_id = params[:id]
    @shoe = Shoe.find_by(id: shoe_id)
    render "edit.html.erb"
  end
  
  def index
    @shoes = Shoe.all
    render "index.html.erb"
  end

  def show
    # shoes_id = params[:id]
    @shoe = Shoe.find_by(id: params[:id])
    render "show.html.erb"
  end  


  def mens_shoes_method
    @shoe1 = Shoe.find_by(id:1)
    @shoe2 = Shoe.find_by(id:2)
    @shoe3 = Shoe.find_by(id:3)
    render "menshoe.html.erb"
  end  
  
  def new
    render "new.html.erb"
  end  
  
  def ladies_shoes_method
    render "ladyshoe.html.erb"
  end

  def kids_shoes_method
    @shoe1 = Shoe.find_by(id:4)
    @shoe2 = Shoe.find_by(id:5)
    @shoe3 = Shoe.find_by(id:6)
    render "kidshoe.html.erb"
  end

  def about_us_method
    render "aboutus.html.erb"
  end

  def create
    shoe = Shoe.new(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
     )
    shoe.save
    render "create.html.erb"
  end

  def update
    shoe_id = params[:id]
    @shoe = Shoe.find_by(id: shoe_id)
    @shoe.name = params[:name]
    @shoe.price = params[:price]
    @shoe.image =  params[:image]
    @shoe.description = params[:description]
    @shoe.save
    render "update.html.erb"
  end  

  def contact_us_method
    render "contactus.html.erb"
  end

  def destroy
    shoes_id = params[:id]
    @shoe = Shoe.find_by(id: shoes_id)
    @shoe.destroy
    render "destroy.html.erb"
  end  
end


