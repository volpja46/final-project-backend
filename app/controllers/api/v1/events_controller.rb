class Api::V1::EventsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @events = Event.all
    render json: @events, status: 200
  end

  def create
    @event = Event.create(event_params)
    @event.user_id = current_user.id
    render json: @event, status: 200
  end

private
def event_params
    params.require(:event).permit(:name, :date, :user_id, :type_of_celebration)
end

end
