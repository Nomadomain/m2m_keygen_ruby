# typed: false
# frozen_string_literal: true

require "bundler/setup"
require "simplecov"
require "rspec_in_context"
require "faker"

require "dotenv/load"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
    c.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.include RspecInContext

  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end
end

SimpleCov.formatters = [SimpleCov::Formatter::HTMLFormatter]

SimpleCov.at_exit do
  SimpleCov.result.format!
  SimpleCov.minimum_coverage 90
  SimpleCov.minimum_coverage_by_file 80
end

SimpleCov.start { load_profile "test_frameworks" }

require "m2m_keygen"
Dir["./spec/support/**/*.rb"].sort.each { |f| require f }
