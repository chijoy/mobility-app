class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.create(
                          name: params[:name],
                          description: params[:description]

    redirect_to '/'
  end

  def show
    @place = Place.find_by(id: params[:id])
  end

  def edit
    @place = Place.find_by(id: params[:id])
  end

  def update
    @place = Place.find_by(id: params[:id])
    @place.update(
                  name: params[:name],
                  description: params[:description]

    redirect_to "/places/#{@place.id}"
  end

  def destroy
    @place = Place.find_by(id: params[:id])
    @image.destroy

    redirect_to '/'
  end
                  
end
