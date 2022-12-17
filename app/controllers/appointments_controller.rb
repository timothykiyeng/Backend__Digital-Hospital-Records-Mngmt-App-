class AppointmentsController < ApplicationController

  def index
    render json: Appointment.all.order(:start_date), status: :ok
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment, status: :ok
  end

end
