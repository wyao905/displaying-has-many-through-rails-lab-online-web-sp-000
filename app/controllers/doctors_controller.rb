class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end
  
  def show
    @doctor = Doctor.find(params[:id])
  end
  
  def new
  end
  
  def create
    @doctor = Doctor.new(doctor_params)
  
    if @doctor.save
      redirect_to @doctor
    else
      render :new
    end
  end
end