class Api::V1::PresentsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :update, :destroy]

  # GET /presents
  def index
    @presents = Present.all
    # @present.user_id = current_user.id
    render json: @present, status: 200
  end

  def create
    @present = Present.create(present_params)
    render json: @present, status: 200
  end

  def update
    @present = Present.find(params[:id])
    if @present.update(present_params)
      render json: @present
    else
      render json: @present.errors, status: :unprocessable_entity
    end
  end

# def destroy
#   @present = Present.find(params['id']).destroy
#   render json: {deleted_present_id: params['id'].to_i}, status: 202
# end

  private
  def present_params
    params.require(:present).permit(:id, :event_id, :price, :name, :store, :priority)
  end

end
