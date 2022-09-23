require 'stripe'

class StripeService

	def initialize()
		Stripe.api_key = ENV["STRIPE_SECRET_KEY"]		
	end

	def find_or_create_customer(current_user)
		if current_user.stripe_customer_id.present?
			stripe_customer = Stripe::Customer.retrieve(current_user.stripe_customer_id)			
		else
			stripe_customer = Stripe::Customer.create(
				{
					name: current_user.name,
					email: current_user.email,
					phone: current_user.phone_number
				})
			current_user.update(stripe_customer_id: stripe_customer.id)
		end
		stripe_customer
	end

	def create_card_token(params)
		Stripe::Token.create({
			card: {
				number: params[:card_number].to_s,
				exp_month: params[:exp_month],
				exp_year: params[:exp_year],
				cvc: params[:cvv]
			}
		})		
	end

	def create_stripe_customer_card(params, stripe_customer)
		token = create_card_token(params)
		Stripe::Customer.create_source(
			stripe_customer.id,
			{ source: token.id }
		)
	end

	def create_stripe_charge(amount_to_be_paid, stripe_customer_id, card_id, )
		Stripe::Charge.create(
		{
			amount: amount_to_be_paid * 100,
			currency: 'usd',
			source: card_id,
			customer: stripe_customer_id,
			description: "Amount $#{amount_to_be_paid} charged for #{workshop_name}"
		})
	end
end
