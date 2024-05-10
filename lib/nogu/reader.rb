module Nogu
  class Reader
    def read(io)
      io.each_line.reject { |line| ignore?(line) }.map { |line| to_tuple(line) }
    end

    private

    def ignore?(line)
      !line.start_with?("|")
    end

    def to_tuple(line)
      line.split("|").reject { |i| i.empty? || i == "\n" }.map { |w| w.strip }
    end
  end
end
