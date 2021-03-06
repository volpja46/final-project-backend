class Api::V1::EventsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :update, :destroy]

  def index
    @events = Event.all
    render json: @events, status: 200
  end

  def create
    @event = Event.create(event_params)
    @event.user_id = current_user.id
    render json: @event, status: 200
  end

  def destroy
    @event = Event.find(params['id']).destroy
    render json: {deleted_event_id: params['id'].to_i}, status: 202
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end


private
def event_params
    params.require(:event).permit(:budget, :id, :name, :date, :user_id, :type_of_celebration)
end

end
