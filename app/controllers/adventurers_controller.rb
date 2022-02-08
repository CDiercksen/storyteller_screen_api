class AdventurersController < ApplicationController
    before_action :set_adventurer, only: [:show, :destroy]

    def index
        adventurers = Adventurer.all 
        render json:adventurers, status: :ok
    end

    def show
        render json: @adventurer, status: :ok
    end 

    def create 
        # debugger
        adventurers = Adventurer.create(adventurer_params)
        render json:adventurers, status: :created
    end 

    def destroy
       @adventurer.destroy
       render json: {message:"Adventurer Deleted"}
       head :no_content, status: :ok
    end

    private
    def adventurer_params
        params.permit(:name, :armor_class, :hit_point_maximum, :spell_dc)
    end

    def set_adventurer
        @adventurer = Adventurer.find(params[:id])
    end
end
