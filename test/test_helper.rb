ENV["RAILS_ENV"] = "test"

# require simplecov before Rails loads
require "simplecov_helper"

require_relative "../config/environment"
require "rails/test_help"

require "factory_bot_rails"

Dir[Rails.root.join("test", "support", "**", "*.rb")].each { |f| require f }

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
    include FactoryBot::Syntax::Methods
  end
end
