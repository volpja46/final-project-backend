class Api::V1::GiftsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @gifts = Gift.all
    render json: @gifts, status: 200
  end

  def create
    @gift = Gift.create(gift_params)
    render json: @gift, status: 200
  end

  private
  def gift_params
    params.require(:gift).permit(:name, :description, :photo, :user_id, :for_who, :occasion)
  end

end




# class Api::V1::GiftsController < ApplicationController
#   skip_before_action :authorized, only: [:create, :index]
#
#   # GET /gifts
#   def index
#     @gifts = Gift.all
#
#     render json: @gifts, status:200
#   end
#
#   # GET /gifts/1
#   def show
#     render json: @gift
#   end
#
#   # POST /gifts
#   def create
#     @gift = Gift.new(gift_params)
#
#     if @gift.save
#       render json: @gift, status: :created, location: @gift
#     else
#       render json: @gift.errors, status: :unprocessable_entity
#     end
#   end
#
#   # PATCH/PUT /gifts/1
#   def update
#     if @gift.update(gift_params)
#       render json: @gift
#     else
#       render json: @gift.errors, status: :unprocessable_entity
#     end
#   end
#
#   # DELETE /gifts/1
#   def destroy
#     @gift.destroy
#   end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     # def set_gift
#     #   @gift = Gift.find(params[:id])
#     # end
#
#     # Only allow a trusted parameter "white list" through.
#     def gift_params
#       params.require(:gift).permit(:name, :description, :user_id, :photo, :user_id, :for_who)
#     end
# end
