class Student::QuestionsController <  ApplicationController
  before_action :find_quest
  before_action :find_question

  def show
    @effort = Effort.new
  end

  private

  def find_quest
    @quest = Quest.find(params[:quest_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

end
