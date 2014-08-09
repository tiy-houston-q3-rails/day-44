class Users::SessionController < ApplicationController

  def destroy
    # nullify the session
    sign_out :user
    redirect_to root_path
  end
end
