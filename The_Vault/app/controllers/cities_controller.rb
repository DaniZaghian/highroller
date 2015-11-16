class CitiesController < ApplicationController

  def index
  	@cities = City.all
    if request.xhr?
        render :json => {
            :cities => @cities
        }
    end
  end

  def show
  	@city = City.friendly.find(params[:id])
  end

end
