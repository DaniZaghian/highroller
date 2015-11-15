class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def new
    @user = User.find(session[:user_id])
  	@event = Event.new
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
    event_params = params.require(:event).permit(:title, :body, :city_id, :event_date, :user_id)
    @event = Event.create(event_params)
    redirect_to city_path(@event.city_id)
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

  def destroy
      id = params[:id]
      event = Event.find(id)
      event.destroy
      redirect_to cities_path
  end


end
