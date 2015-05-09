class PathsController < ApplicationController
  
  def index    
    @paths = Path.all  
  end

  def new
    @path = Path.new
  end

  def create
    @path = Path.new(path_params)

    if @path.save
      redirect_to paths_path
    else
      render :new
    end
  end

  def show
    @path = Path.find(params[:id])
  end

  def moja_nazwa_akcji
  end




  private

  def path_params
    params.require(:path).permit(:path_name, :description, :city_id)
  end


end
