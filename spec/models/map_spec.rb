describe Map do
  describe "#new" do
    subject do
      Map.new(x: 3, y: 6)
    end

    its(:x) { eq 3 }
    its(:y) { eq 6 }

    describe "Validations" do
      context "Not Specified X Parameter" do
        it { Map.new(y: 6).should_not be_valid }
      end

      context "Not specified Y Parameter" do
        it { Map.new(x: 6).should_not be_valid }
      end

      context "Not specified X/Y Parameter" do
        it { Map.new().should_not be_valid }
      end

      context "X Specified not numericaly String" do
        it { Map.new(x: "NOT NUMERIC", y: 3).should_not be_valid }
      end

      context "Y Specified not numericaly String" do
        it { Map.new(x: 3, y: "NOT NUMERIC").should_not be_valid }
      end
    end
  end
end
