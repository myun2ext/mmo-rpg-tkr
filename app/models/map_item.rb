class MapItem < ActiveRecord::Base
  belongs_to :map_chip
  has_one :map
  has_one :position, as: :map, class_name: "Map"

  delegate :x, :x=,
           :y, :y=, to: :map, allow_nil: true

  def initialize(args)
    super(args)
    self.map = Map.new(args.slice(:x, :y))
  end
end
