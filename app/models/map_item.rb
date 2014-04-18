class MapItem < ActiveRecord::Base
  belongs_to :map_chip
  has_one :position, as: :map

  delegate :x, :x=,
           :y, :y=, to: :position, allow_nil: true
end
