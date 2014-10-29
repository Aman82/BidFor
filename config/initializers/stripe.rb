Rails.configuration.stripe = {
  :publishable_key => 'pk_test_oiRiitkCRA4FbsWDSJYarjip',
  :secret_key      => 'sk_test_DARprTeWkE9oKpIS5Ox9rfkt'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]