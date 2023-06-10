require "simplecov"
require "simplecov-html"
require "simplecov_json_formatter"

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter
])

SimpleCov.start "rails" do
  # enable_coverage :branch

  add_filter do |source_file|
    source_file.lines.count < 10
  end

  add_group "Services", "app/services"
  add_group "Components", "app/components"
end
