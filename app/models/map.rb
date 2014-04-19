class Map < ActiveRecord::Base
  validates :x, :y,
    numericality: true,
    presence: true

  validates :x, uniqueness: { scope: :y }

  def self.append(*args)

    if args.length == 1 && args[0].kind_of?(Hash)
      self.create(args.first)
    else
      MapItem.create(
        x: args[0],
        y: args[1],
        map_chip: args[2]
      )
    end
  end

  class << self
    alias :add :append
    alias :new_item :new
  end
end
