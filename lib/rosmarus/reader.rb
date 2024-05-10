module Rosmarus
  class Reader
    def initialize(mapper: nil)
      @mapper = Rosmarus::Mapper.new
    end

    def decode(morse_code)
      morse_code.map { |code| @mapper.decode(code) }.join
    end
  end
end
