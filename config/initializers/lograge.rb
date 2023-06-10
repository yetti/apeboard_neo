Rails.application.configure do
  config.lograge.enabled = if (!Rails.env.development? ||
      ENV["LOGRAGE_IN_DEVELOPMENT"] == "true") ? true : false
  end
end
