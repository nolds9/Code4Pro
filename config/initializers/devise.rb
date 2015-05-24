Devise.setup do |config|

  config.mailer_sender = 'Nick @ Code4Pro <no-reply@code4pro.com>'


  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]


  config.strip_whitespace_keys = [ :email ]


  config.skip_session_storage = [:http_auth]


  config.stretches = Rails.env.test? ? 1 : 10


  config.reconfirmable = true


  config.expire_all_remember_me_on_sign_out = true


  config.password_length = 8..128

  config.reset_password_within = 6.hours


  config.sign_out_via = :delete


  require  'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '575719217789-km1phd0veo5rgfm2j9pm5re3rgp4lh7f.apps.googleusercontent.com', 'Phjx9DSKpho_--dEQM4WmiLB', {access_type: "offline", approval_prompt: ""}

  require  'omniauth-facebook'
  config.omniauth :facebook, '829222653838459', '0718660542ce1cc44e4eede7f395b1a1'

  require  'omniauth-github'
  config.omniauth :github, 'f544271690e629cc225c', '0ca6fbe6a981ebce56193b57b89347747faa859c', scope: "user:email"


end
