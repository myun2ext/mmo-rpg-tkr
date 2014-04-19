describe Map do
  describe "#new" do
    subject do
      Map.new(x: 3, y: 6)
    end

    its(:x) { eq 3 }
    its(:y) { eq 6 }

    describe "validates of" do
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

      describe "uniqueness:" do
        before do
          Map.add(x: 3, y: 6)
        end

        context "when Not Duplicated X/Y" do
          it { Map.append(x: 4, y: 8).should be_valid }
        end

        context "when Duplicated by X, but not duplicated X/Y" do
          it { Map.append(x: 3, y: 8).should be_valid }
        end

        context "when Duplicated by Y, but not duplicated X/Y" do
          it { Map.append(x: 4, y: 6).should be_valid }
        end

        context "when Duplicated X/Y" do
          it { Map.append(x: 3, y: 6).should_not be_valid }
        end
      end
    end
  end

  describe ".append" do
    context "specified in Hash Parameters" do
      subject do
        Map.append(x: 3, y: 6)
      end
      its(:x) { should eq 3 }
      its(:y) { should eq 6 }
    end

    context "specified in Not Hash" do
      let(:map_chip) { FactoryGirl.create :map_chip }
      subject do
        Map.append(3, 6, map_chip)
      end

      it { should be_kind_of(MapItem) }
      its(:x) { should eq 3 }
      its(:y) { should eq 6 }
      its(:map_chip) { should eq map_chip }
    end
  end
end
