class Student::QuestsController < ApplicationController
  before_action :find_quest, only: [:show]

  def index
    @quests = Quests.all
  end

  def show
  end


  private

  def submit
    #TODO
  end

  def find_quest
    @quest = Quest.find(params[:id])
  end

end
