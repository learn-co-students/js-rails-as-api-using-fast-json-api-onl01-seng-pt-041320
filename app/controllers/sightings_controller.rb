class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
  end

  def show
    sighting = Sighting.find(params[:id])
    options = {
    include: [:bird, :location]
   }
    render json: SightingSerializer.new(sighting, options)
  end
end
