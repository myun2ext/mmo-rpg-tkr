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

    it { be_valid }
    its(:x) { eq 3 }
    its(:y) { eq 6 }
    its(:map_chip) { eq ex_map_chip }
  end
end
