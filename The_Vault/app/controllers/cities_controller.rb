class CitiesController < ApplicationController

  def index
  	@cities = City.all
    respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @cities}
      end
  end

  def show
  	@city = City.friendly.find(params[:id])
  end

end
