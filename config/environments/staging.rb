require_relative 'production'

Mail.register_interceptor RecipientInterceptor.new(ENV['EMAIL_RECIPIENTS'])

Techdardo::Application.configure do
  # ...

  config.action_mailer.default_url_options = { host: 'staging.techdardos.com' }
end
