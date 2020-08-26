class SightingsController < ApplicationController
  
  def index
  sightings = Sighting.all
  render json: SightingSerializer.new(sightings)
end
  
  
  # Setting these relationships up is necessary for the second step. Now that we have included relationships connecting the SightingSerializer to :bird and :location, to include attributes from those objects, the recommended method is to pass in a second options parameter to the serializer indicating that we want to include those objects:
  
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
end