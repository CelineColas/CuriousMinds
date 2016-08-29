class Student::ProfilesController < ApplicationController

  before_action :find_profile

  def show
    # @quests = Quest.where(student: current_user, challenge: @challenge, status: "submitted")
    @unfinished_quests = current_user.quests.where(status: 'running')
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to student_profile_path
  end

  def history
    @finished_quests = current_user.quests.where(status: 'finished')
  end


  private
  def profile_params
    params.require(:user).permit(:name, :photo, :school, :interests)
  end

  def find_profile
    @profile = current_user
  end
end
