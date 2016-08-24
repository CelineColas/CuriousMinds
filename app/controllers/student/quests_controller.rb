class Student::QuestsController < ApplicationController
  # before_action :find_quest, only: [:show]

  def index
    # @quests = current_user.quests
  end

  def show
  end

  def submit
    #TODO
  end

  private

  def find_quest
    # @quest = Quest.find(params[:id])
  end

end
