OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '529173366435-99nk1b7rk961triqml3h6tvop1661plk.apps.googleusercontent.com', 'zsyFKmMRa0qzJyw1kfyymWGJ', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
