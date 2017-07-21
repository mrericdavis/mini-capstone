class Shoe < ApplicationRecord
  belongs_to :supplier
  has_many :images
  
  def sales_message
    if price < 130.00
      return "Discount Item!!!"
    else 
      return "Everyday Value!!!"
    end 
  end    

  def tax
    return price * 0.09
  end 

  def total
    return price + tax
  end


end
