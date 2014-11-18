class InternalMailer < Devise::Mailer
  # Send mail directly to postfix - don't bother sending it through Cuttlefish first.
  # That way we don't need a special app and all the associate nonsense
  default delivery_method_options: {
    address: Rails.configuration.postfix_smtp_host,
    port: Rails.configuration.postfix_smtp_port
  }
end