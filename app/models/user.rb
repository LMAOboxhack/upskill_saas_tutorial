class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :plan
  has_one :profile
  
  PRO_PRICE_ID = ENV["pro_price_id"] # Access price ID ENV variable
  attr_accessor :stripe_card_token # Access the stripe_card_token attribute injected into the pro_form by stripe.js
  def save_pro
    # Fields clear devise validations
    if valid?
      
=begin
This method is where the magic happens.
The 'create' method called under the Stripe gem will:
  Send the customer's details (email, plan_id, one-time Card Token) to Stripe
  Stripe will then create a new subscription for us in their DB (visible from the Stripe dashboard)
  Stripe will then return a Customer Token to us (DO NOT CONFUSE WITH CARD TOKEN)
  We will assign this Customer Token to the customer variable, and
  Save the customer's details (user, pass), along with the Customer Token to our own DB,
  We can then use the Customer Token to charge the customer recurringly for the subscription,
  Without having to worry about legal complications of saving CC info to our DB. 
=end
      
      # Create Stripe customer object
      customer = Stripe::Customer.create(
        email: email
      )
      
      # Create payment method using customer's card
      customerPaymentMethod = Stripe::PaymentMethod.create({
        type: 'card',
        card: { token: stripe_card_token }
      })
      
      # Attach payment method to customer
      Stripe::PaymentMethod.attach(
        customerPaymentMethod.id,
        { customer: customer.id }
      )
      
      # Set created payment method as customer's default payment method
      Stripe::Customer.update(
        customer.id,
        { invoice_settings: { default_payment_method: customerPaymentMethod.id } }
      )
      
      # Create the subscription
      subscription = Stripe::Subscription.create({
        customer: customer.id,
        items: [ { price: PRO_PRICE_ID } ]
      })
      
      # Save info - user, pass, stripe tokens - to database
      self.stripe_subscription_token = subscription.id
      self.stripe_customer_token = customer.id
      save!
    end
  end
end
