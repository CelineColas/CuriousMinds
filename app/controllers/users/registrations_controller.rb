class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:teacher])
  end

  def after_sign_up_path_for(resource)
    if resource.teacher == true
      edit_teacher_profile_path
    else
      edit_student_profile_path
    end
  end

end

