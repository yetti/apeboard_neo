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
FactoryBot.define do
  factory :message do
    subject { Faker::Lorem.sentence(word_count: 3) }
    name { Faker::Internet.username(specifier: 5..8) }
    email { Faker::Internet.email }
    url { Faker::Internet.url }
    password { Faker::Internet.password(min_length: 8) }
    message { Faker::Lorem.paragraph(sentence_count: 3) }
  end
end
