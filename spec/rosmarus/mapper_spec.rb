RSpec.describe Rosmarus::Mapper do
  subject(:mapper) { described_class.new }

  context "#decode" do
    it "should decode a single morse code" do
      expect(mapper.decode(".-")).to eq "A"
    end
  end
end
