class SessionsController < ApplicationController
  def doclogin
    user = Doctor.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:current_user] = user.id
      render json: user, status: :ok
    else
      render json: { error: ["invalid email and/or password"] }, status: :unauthorized
    end
  end

  def patientlogin
    user = Patient.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:current_user] = user.id
      render json: user, status: :ok
    else
      render json: { error: ["invalid email and/or password"] }, status: :unauthorized
    end
  end

  def logout
    session.delete :current_user
    head :no_content
  end
end
