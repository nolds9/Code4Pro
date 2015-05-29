Rails.configuration.stripe = {
  :publishable_key => 'pk_test_ZbYOWclAqdJDFMB6McHioRX5',
  :secret_key      => 'sk_test_uzwzEpzdFmILBvFNhAUpYwKz'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]