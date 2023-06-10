require "simplecov"
require "simplecov-html"
require "simplecov_json_formatter"
require "simplecov-cobertura"

command_name "Job #{ENV["CIRCLE_NODE_INDEX"]}" if ENV["CIRCLE_NODE_INDEX"]

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter,
  SimpleCov::Formatter::CoberturaFormatter
])

SimpleCov.start "rails" do
  # enable_coverage :branch

  add_filter do |source_file|
    source_file.lines.count < 10
  end

  add_filter(/test/)
  add_filter(/bin/)
  add_filter(/db/)
  add_filter(/vendor/)
  add_filter(/node_modules/)
  add_filter(/config/)

  add_group "Services", "app/services"
  add_group "Components", "app/components"
end
