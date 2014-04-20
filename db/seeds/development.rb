chip = MapChip.create(name: "White Tile")
8.times { |i|
  MapChip.create(name: "Cracked White Tile ##{i+1}")
}
MapChip.create(name: "Black Tile")
MapChip.create(name: "Sand")
MapChip.create(name: "Soil")
MapChip.create(name: "Grass")
MapChip.create(name: "Wood")
MapChip.create(name: "Stone Tile")
MapChip.create(name: "Cobble Tile")

Map.append(0, 0, chip)
Map.append(1, 0, chip)
Map.append(0, 1, chip)
Map.append(1, 1, chip)
