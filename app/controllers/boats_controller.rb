class BoatsController < ApplicationController
    before_action :set_user
    before_action :set_boat, only: [:show, :edit, :update ]


    def new
        @boat = Boat.new
    end

    def create
      @boat = Boat.new(boat_params)
      @boat.user = @user
      if @boat.save
        redirect_to boats_path
      else
        render "new"
      end
    end

    def index
        @boats = Boat.all
    end
    
    def show
    end

    def edit
    end
  
    def update
      @boat.update(boat_params)
      redirect_to boat_path(@boat)
    end
  

    def destroy
      set_boat
      @boat.destroy
      redirect_to boats_path
    end

    private

    def set_boat
      @boat = Boat.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    def boat_params
      params.require(:boat).permit(:name, :category, :description, :price_per_day, :location, :photo)
    end

end
