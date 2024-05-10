# frozen_string_literal: true

require_relative "rosmarus/version"

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.setup

module Rosmarus
end
