class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
  has_many :sightings
  has_many :locations, through: :sightings
end
