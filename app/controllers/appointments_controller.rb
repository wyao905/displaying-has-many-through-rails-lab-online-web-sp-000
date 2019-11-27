class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
    end
  
    def new
        binding.pry
    end
  
    def create
        @appointment = Appointment.new(appointment_params)
        
        if @appointment.save
            redirect_to @appointment
        else
            render :new
        end
    end
end