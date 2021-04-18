class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, with: :render_not_found
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  private

  def after_sign_up_path_for(resource)
   edit_user_password_path
  end

  def after_sign_in_path_for(resource)
   edit_user_password_path
  end

  def render_not_found
    hash = {
      "status" => 404,
      "message" => "The requested resource could not be found.",
      "documentation_url" => "https://github.com/johncorderox/Amy-Winehouse-API",
    }
    render json: hash, status: :not_found
  end
end
