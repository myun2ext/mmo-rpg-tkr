class Map < ActiveRecord::Base
  validates :x, :y,
    numericality: true,
    presence: true

  validate :x, uniqueness: { scope: :x }

  def self.append(args)
    self.create(args)
  end

  class << self
    alias :add :append
  end
end
