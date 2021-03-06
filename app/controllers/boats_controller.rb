class BoatsController < ApplicationController
    before_action :set_user
    before_action :set_boat, only: [:show, :edit, :update ]

    def index
      if params[:query].present?
        @boats =Boat.search_by_description_and_address(params[:query])
      else
        @boats = Boat.all
      end 
        @markers = @boats.geocoded.map do |boat|
          {
            lat: boat.latitude,
            lng: boat.longitude,
          }
          
        
        end
    end

    def show
      @markers= [{
        lat: @boat.geocode[0],
        lng: @boat.geocode[1]
      } ]
    end

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
      params.require(:boat).permit(:name, :category, :description, :price_per_day, :address, photos: [])
    end

end
