describe MapItem do
  describe "#new" do
    let(:ex_map_chip) { MapChip.new }

    subject do
      MapItem.new(
        x: 3,
        y: 6,
        map_chip: ex_map_chip
      )
    end

    it { should be_valid }
    its(:x) { should eq 3 }
    its(:y) { should eq 6 }
    its(:map_chip) { should eq ex_map_chip }

    context "not parameter specified" do
      subject { MapItem.new }
      it { should be_valid }
    end
  end
end
