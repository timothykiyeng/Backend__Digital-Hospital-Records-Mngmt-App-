class AppointmentsController < ApplicationController

  def index
    render json: Appointment.all.order(:start_date), status: :ok
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment, status: :ok
  end

  def create
    render json: Appointment.create!(appointment_params), status: :created
  end

  def update
    appointment = Appointment.find(params[:id])
    render json: appointment.update!(appointment_params), status: :ok
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    head :no_content
  end

  private

  def appointment_params
    params.permit(:id, :title, :start_date, :end_date, :notes, :patient_id, :doctor_id)
  end

end
