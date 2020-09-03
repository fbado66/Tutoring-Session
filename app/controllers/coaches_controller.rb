class CoachesController < ApplicationController
    def index 
        @coaches = Coach.all 
    end 

    def show 
        @coach = Coach.find(params[:id])
    end 

    def new
        @coach = Coach.new 
    end 

    def create
        @coach = Coach.create(coach_params)
        redirect_to coach_path(@coach)
    end 

    def edit
        @coach = Coach.find(params[:id])
    end 

    def update
        @coach = Coach.find(params[:id])
        @coach.update(coach_params)
        redirect_to coach_path(@coach)
    end


    private 
    def coach_params
        params.require(:coach).permit(:name, :experience_years)
    end 
end
