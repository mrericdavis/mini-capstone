class ShoesController < ApplicationController
  def home
    @shoes = [Shoe.first, Shoe.second, Shoe.third]
    render "home.html.erb"
  end
  
  def edit
    @shoe = Shoe.find_by(id: params[:id])
    render "edit.html.erb"
  end
  
  def index
    @shoes = Shoe.all
    sort_attribute = params[:sort_by]
    sort_attribute = params[:sort_attribute]
    sort_attribute = params[:sort_by]
    if sort_attribute
      @shoes = Shoe.all.order(sort_attribute)
    elsif
      Shoe.all.order(:price => :desc) 
    else 
      Shoe.where("price < ?", 100)
    end 
    render "index.html.erb"
  end

  def show
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
    @shoe1 = Shoe.find_by(id:24372)
    @shoe2 = Shoe.find_by(id:24373)
    @shoe3 = Shoe.find_by(id:24371)
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
    flash[:success] = "Shoe Succesfully Added To Inventory"
    redirect_to "/shoes/#{@shoe.id}"
  end

  def update
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.name = params[:name]
    @shoe.price = params[:price]
    @shoe.image =  params[:image]
    @shoe.description = params[:description]
    @shoe.save
    flash[:success] = "Shoe Succesfully Updated In Inventory"
    redirect_to "/shoes/#{@shoe.id}"
  end  

  def contact_us_method
    render "contactus.html.erb"
  end

  def destroy
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.destroy
    flash[:danger] = "Shoe Succesfully Deleted From Inventory"
    redirect_to "/shoes"
  end

  def search
    search = params[:search_terms]
    @shoes = Shoe.where("name iLIKE ?", "%#{search}%" )
    render "index.html.erb"  
  end
end  


