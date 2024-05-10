RSpec.describe Rosmarus::Reader do
  subject(:reader) { described_class.new }

  context "from morse code" do
    let(:morse) {
      [
        #   h    e       l       l      o    \s
        "....", ".", ".-..", ".-..", "---", "/",
        #  w      o      r       l      d    \s
        ".--", "---", ".-.", ".-..", "-..", "/",
        #    4        2        0         :        1        3
        "....-", "..---", "-----", "---...", ".----", "...--"
      ]
    }

    let(:text) { "HELLO WORLD 420:13" }

    it "it should return the caracters associated with the morse code" do
      expect(reader.decode(morse)).to eq text
    end
  end
end
