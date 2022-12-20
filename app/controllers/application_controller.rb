class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  before_action :authorize

  def current_user
    Doctor.find_by(id: session[:current_user])
  end

  def is_doc
    return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user.doctor
  end



  def authorize
    render json: { errors: ["Not authorized"] }, status: :unauthorized unless current_user
  end


  private

  def render_unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  def record_not_found(notfound)
    render json: {error: "#{notfound.model} not found"}, status: 404
  end
end
