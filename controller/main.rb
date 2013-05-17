class MainController < Ramaze::Controller
  def index
    @amount = 500
    @amount_str = "$%.2f" % ( @amount / 100 )
  end

  def charge
    if ! request.post?
      redirect '/'
    end

    @amount = 500 # cents
    begin
      customer = Stripe::Customer.create(
        email: 'customer@example.com',
        card: request[:stripeToken].to_s
      )

      charge = Stripe::Charge.create(
        amount: @amount,
        description: 'Charge from Ramaze',  # not shown to customers, only shown in Stripe admin interface
        currency: 'cad',
        customer: customer.id
      )
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_referrer
    end
  end
end
