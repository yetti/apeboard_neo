json.extract! message, :id, :subject, :name, :email, :url, :message, :created_at, :updated_at
json.url message_url(message, format: :json)
