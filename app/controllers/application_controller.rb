class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.teacher == true
      teacher_profile_path
    else
      student_profile_path
    end
  end

end
