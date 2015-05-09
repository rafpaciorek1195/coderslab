class CitiesController < ApplicationController
  def index    
    @cities = City.all  
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to cities_path
    else
      render :new
    end
  end

  def new
    @city = City.new
  end


  private

  def city_params
    params.require(:city).permit(:city_name, :city_country)
  end

end
