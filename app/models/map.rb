class Map < ActiveRecord::Base
  validates :x, :y,
    uniqueness: true,
    numericality: true,
    presence: true
end
