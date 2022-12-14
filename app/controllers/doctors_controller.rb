class DoctorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message

    skip_before_action :is_doc, only: [:create]
    skip_before_action :authorize, only: [:create]

    def index
        doctors = Doctor.all
        render json: doctors, status: :ok
    end

    def create
        doc = Doctor.create!(doctor_params)
        render json: doc, status: :created
    end

    def show
        doctor = find_doctor
        render json: doctor.to_json(only: [:title, :name, :bio, :department_id, :email], include: [department: {only: [:id]}])
    end



    private
    def find_doctor
       Doctor.find(params[:id])
    end

    def render_not_found_message
        render json: {error: 'Doctor not found'}, status: 404
    end

    def doctor_params
        params.require(:doctor).permit(:id, :title, :name, :bio, :department_id, :patient_id, :email, :password_digest)
    end
end
