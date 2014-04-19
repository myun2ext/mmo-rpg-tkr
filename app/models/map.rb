class Map < ActiveRecord::Base
  validates :x, :y,
    numericality: true,
    presence: true

  validates :x, uniqueness: { scope: :y }

  def self.append(args)
    self.create(args)
  end

  class << self
    alias :add :append
  end
end
