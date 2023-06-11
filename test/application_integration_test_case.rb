require "test_helper"

require "evil_systems"

EvilSystems::PrecompileAssets.initial_setup

class ApplicationIntegrationTestCase < ActionDispatch::IntegrationTest
end
