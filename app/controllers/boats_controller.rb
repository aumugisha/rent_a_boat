class BoatsController < ApplicationController
    before_action :set_boat

    def new
        @boat = Boat.new
    end

    def create
      @boat = Boat.new(boat_params)
      @boat.user_id = params[:user_id]
      if boat.save
        redirect_to boats_path
      else
        render "new"
    end

    def index
        @boats = Boats.all
    end

    private

    def set_boat
      @boat = Boat.find(params[:boat_id])
    end

    def boat_params
      params.require(:boat).permit(:name, :type, :description, :price_per_day, :location, :user_id)
    end

end
