class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def destroy
  sign_out
  redirect_to root_path
  end

end
