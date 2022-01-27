class AdventurersController < ApplicationController
    def index
        adventurers = Adventurer.all 
        render json:adventurers
    end
end
