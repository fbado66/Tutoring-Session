class TutoringTimesController < ApplicationController
    def index 
        @tutoring_times = TutoringTime.all 
    end 

    def show 
        @tutoring_time = TutoringTime.find(params[:id])
    end 

    def new
        @tutoring_time = TutoringTime.new 
        @students = Student.all
        @coaches = Coach.all
    end 

    def create
        @tutoring_time = TutoringTime.create(tutoring_params)        
        student = Student.find(tutoring_params[:student_id])
        redirect_to student_path(student)
    end 

    def edit
        @tutoring_time= TutoringTime.find(params[:id])
        @students = Student.all
        @coaches = Coach.all
    end 

    def update
        @tutoring_time = TutoringTime.find(params[:id])
        @tutoring_time.update(tutoring_params)
        redirect_to tutoring_time_path(@tutoring_time)
    end

    def destroy
        @tutoring_time = TutoringTime.destroy(params[:id])
        redirect_to tutoring_times_path
    end 

    private 
    def tutoring_params
        params.require(:tutoring_time).permit(:appointment_time, :student_id, :coach_id)
    end 
end
