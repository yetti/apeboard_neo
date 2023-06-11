# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  message    :text             not null
#  name       :string           not null
#  password   :string
#  subject    :string           not null
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_messages_on_email  (email) UNIQUE
#  index_messages_on_name   (name) UNIQUE
#
class Message < ApplicationRecord
end
