class Student::QuestsController < ApplicationController
  before_action :find_quest, only: [:show, :submit]

  def index
    @quests = current_user.quests
  end

  def show
  end

  def submit
    if @quest.completion_percentage == 100
      @quest.status = "finished"
    else
      @quest.status = "submitted"
    end

    @quest.save

    redirect_to student_profile_path
  end

  private

  def find_quest
    @quest = Quest.find(params[:id])
  end

end
