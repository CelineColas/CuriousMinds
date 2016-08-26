class Student::QuestsController < ApplicationController
  before_action :find_quest, only: [:show]

  def index
    @quests = current_user.quests
  end

  def show
  end

  def submit
    result = (number_of_correct_efforts.to_s/number_of_questions.to_s)*100
    if result = 100
      quest.status = "100%"
    else
      quest.status = "#{result} %"
    end
  end

  private

  def find_quest
    @quest = Quest.find(params[:id])
  end

end
