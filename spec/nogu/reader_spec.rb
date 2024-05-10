RSpec.describe Nogu::Reader do
  subject(:reader) { described_class.new }

  context "#read", :fixtures do
    let(:table) { StringIO.new fixture("text_table.txt") }
    let(:tuples) {
      [
        ["Cheatsheet"],
        ["Word", "Number"],
        ["One", "1"],
        ["Two", "2"],
        ["Three", "3"]
      ]
    }

    it "should break text table into tuples" do
      expect(reader.read(table)).to eq tuples
    end
  end
end
