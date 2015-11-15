class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def show
  	@event = Event.find(params[:id])
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def update
    event_id = params[:id]
    event = Event.find(event_id)
    updated_attributes = params.require(:event).permit(:title, :body, :city_id, :event_date)
    event.update_attributes(updated_attributes)
    redirect_to event
  end


end
