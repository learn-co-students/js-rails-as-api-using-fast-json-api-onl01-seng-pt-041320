class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longitude
  has_many :sightings
  has_many :birds, through: :sightings
end
