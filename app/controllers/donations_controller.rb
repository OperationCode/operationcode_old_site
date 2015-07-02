class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    token = params[:stripeKey]

    customer = Stripe::Customer.create(
      :email        => @donation.email,
      :card         => token,
      :description  => "Donation of $#{@donation.total} to Operation Code",
    )

    charge = Stripe::Charge.create(
      :customer     => customer.id,
      :amount       => @donation.total,
      :description  => "Donation of $#{@donation.total} to Operation Code",
      :currency     => 'usd'
    )

    respond_to do |format|
      if @donation.save
        DonationMailer.thankyou(@donation).deliver_now
        format.html { redirect_to root_url,
                      :flash => { :success => "Thank you for your generous donation!"}
                    }
      else
        format.html { redirect_to new_donation_path,
                      :flash => { :error => "There was an error processing your donation, please retry."}
                    }
      end
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_donation_path
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :email, :amount)
  end

end
