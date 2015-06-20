class Donation < ActiveRecord::Base
  def total
    amount * 100
  end 
end
