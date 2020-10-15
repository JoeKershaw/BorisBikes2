require "bike"

describe Bike do
  describe "#report" do
    it "bike is broken" do
      expect(subject.report).to eq !:working?
    end
  end
end



