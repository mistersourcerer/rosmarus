module Rosmarus
  class Mapper
    def decode(morse)
      TO_CHARS[morse]
    end
  end
end
