# frozen_string_literal: true

require "rosmarus"

module Nogu
  module SpecHelpers
    FIXTURES = File.expand_path("../fixtures/", __FILE__)

    def fixture(path)
      final_path = "#{FIXTURES}/#{path}"
      if File.exist?(final_path)
        File.read(final_path)
      else
        raise "No fixture found at #{final_path}"
      end
    end
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Nogu::SpecHelpers, :fixtures
end
