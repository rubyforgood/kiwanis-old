class EventsController < ApplicationController
  before_action :set_club
  skip_before_action :authenticate_user!, only: [:landing]

  def index
    @events = Event.all
  end

  def new
    @event = @club.events.new
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def landing
    @event = Event.find_by_id(params[:id])
  end

  def create
    @event = @club.events.build(event_params)
    puts "#{@event}"
    if @event.save
      redirect_to club_event_path(@club, @event), notice: 'New event was added.'
    else
      redirect_back fallback_location: root_path, flash: { error: e.message }
    end
  end

  def update
    @event = @club.events.where(id: params[:id]).first_or_initialize
    if @event.update_attributes!(event_params)
      redirect_to club_event_path(@club, @event), notice: 'Event was updated.'
    else
      redirect_back fallback_location: root_path, flash: { error: e.message }
    end
  end

  private
    
    def set_club
      @club = Club.find_by_id(params[:club_id]) || Club.find_by_id(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :street, :city, :state, :zip, :start_date, :end_date, :club_id)
    end

end
