class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    unless @donation.valid?
      flash[:error] = 'Please verify all required fields are completed.'
      return redirect_to new_donation_path
    end

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      :email        => @donation.email,
      :source         => token,
    )

    charge = Stripe::Charge.create(
      :customer     => customer.id,
      :amount       => @donation.total_for_stripe,
      :description  => "Donation of $#{@donation.amount} to Operation Code",
      :currency     => 'usd'
    )

    respond_to do |format|
      if @donation.save
        DonationMailer.thankyou(@donation).deliver_now
        format.html { redirect_to root_url,
                      :flash => { :success => "Thank you for your generous donation to Operation Code! Please check your email for your receipt."}
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
    params.require(:donation).permit(:name, :email, :amount, :first_name, :last_name, :stripeToken)
  end
end
