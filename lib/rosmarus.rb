# frozen_string_literal: true

require_relative "rosmarus/version"

require "zeitwerk"
# loader = Zeitwerk::Loader.for_gem
loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.setup

module Rosmarus
  TABLE = []

  TABLE << ["A", ".-"]
  TABLE << ["B", "-..."]
  TABLE << ["C", "-.-."]
  TABLE << ["D", "-.."]
  TABLE << ["E", "."]
  TABLE << ["F", "..-."]
  TABLE << ["G", "--."]
  TABLE << ["H", "...."]
  TABLE << ["I", ".."]
  TABLE << ["J", ".---"]
  TABLE << ["K", "-.-"]
  TABLE << ["L", ".-.."]
  TABLE << ["M", "--"]
  TABLE << ["N", "-."]
  TABLE << ["O", "---"]
  TABLE << ["P", ".--."]
  TABLE << ["Q", "--.-"]
  TABLE << ["R", ".-."]
  TABLE << ["S", "..."]
  TABLE << ["T", "-"]
  TABLE << ["U", "..-"]
  TABLE << ["V", "...-"]
  TABLE << ["W", ".--"]
  TABLE << ["X", "-..-"]
  TABLE << ["Y", "-.--"]
  TABLE << ["Z", "--.."]

  TABLE << [" ", "/"]

  TABLE << ["0", "-----"]
  TABLE << ["1", ".----"]
  TABLE << ["2", "..---"]
  TABLE << ["3", "...--"]
  TABLE << ["4", "....-"]
  TABLE << ["5", "....."]
  TABLE << ["6", "-...."]
  TABLE << ["7", "--..."]
  TABLE << ["8", "---.."]
  TABLE << ["9", "----."]

  TABLE << [":", "---..."]

  TO_MORSE = TABLE.to_h
  TO_CHARS = Rosmarus::TABLE.map { |pair| pair.reverse }.to_h
end
