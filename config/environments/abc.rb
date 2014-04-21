config.action_mailer.perform_deliveries = true # Set it to false to disable the email in dev mode
config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'testing.rails3421@gmail.com',
  password:             'password3421',
  authentication:       'plain',
  enable_starttls_auto: true  }