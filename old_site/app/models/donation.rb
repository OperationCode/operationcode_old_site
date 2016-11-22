class Donation < ActiveRecord::Base
    validates :first_name, :last_name, :email, :amount, presence:true

    def total_for_stripe
      amount * 100
    end

end
