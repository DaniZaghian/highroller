class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def new
    @user = User.find(session[:user_id])
  	@event = Event.new
  end

  def show
  	@event = Event.friendly.find(params[:id])
  end

  # def create
  #   event_params = params.require(:event).permit(:title, :body, :city_id, :event_date, :user_id)
  #   @event = Event.create(event_params)
  #   redirect_to city_path(@event.city_id)
  # end

  def create 
    
 # event = Event.new(event_params)
    event = Event.create(event_params)
    if event.save  
   
      redirect_to city_path(event.city_id)
    else 
      flash[:error] = event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def edit
  	@event = Event.friendly.find(params[:id])
  end

  def update
    event = Event.friendly.find(params[:id])
    updated_attributes = params.require(:event).permit(:title, :body, :city_id, :event_date)
    event.update_attributes(updated_attributes)
    redirect_to event
  end

  def destroy
      id = params[:id]
      event = Event.friendly.find(id)
      event.destroy
      redirect_to cities_path
  end


private
def event_params
  params.require(:event).permit(:title, :body, :city_id, :event_date, :user_id)
end


end
