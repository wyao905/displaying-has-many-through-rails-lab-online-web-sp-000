class PatientsController < ApplicationController
    def index
      @patients = Patient.all
    end
    
    def show
      @patient = Patient.find(params[:id])
    end
    
    def new
    end
    
    def create
      @patient = Patient.new(patient_params)
    
      if @patient.save
        redirect_to @patient
      else
        render :new
      end
    end
  end