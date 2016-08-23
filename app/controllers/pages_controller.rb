class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      if user.teacher == true
        redirect_to teacher_profile_path
      else
        redirect_to student_profile_path
      end
    end

    # else, by defaut we render :home
  end
end
