FactoryGirl.define do
  factory :map_chip do
    sequence :name do |n|
      "MapChip #{n}"
    end
  end
end
