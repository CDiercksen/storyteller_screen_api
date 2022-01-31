class AdventurersController < ApplicationController
    def index
        adventurers = Adventurer.all 
        render json:adventurers
    end

    def create 
        # debugger
        adventurers = Adventurer.create(adventurer_params)
        render json:adventurers
    end 

    private
    def adventurer_params
        params.permit(:name, :armor_class, :hit_point_maximum, :spell_dc)
    end
end
