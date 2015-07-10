class Donation < ActiveRecord::Base
    validates :first_name, :last_name, :email, presence:true

    def total
      amount *100
    end
end
