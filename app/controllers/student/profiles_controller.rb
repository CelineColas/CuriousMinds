class Student::ProfilesController < ApplicationController

  before_action :find_profile

  def show
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to student_profile_path
  end

  private
  def profile_params
    params.require(:user).permit(:name, :photo, :school, :interests)
  end

  def find_profile
    @profile = current_user
  end
end
