class Student::EffortsController < ApplicationController
  before_action :find_question
  before_action :find_quest
  # NOT USEFUL I THINK
  # def new
  #   @effort = Effort.new
  # end

  def create
    @effort = @question.efforts.new(effort_params)
    @effort.quest = @quest

    # if @question.answer.content.downcase == @effort.content.downcase --> Doesn't work !!!
    #   @effort.status = "correct"
    # else
    #   @effort.status = "wrong"
    # end

    if @effort.save!
      next_question_id = @question.id + 1 # TODO: may not be +1
      @next_question = Question.find(next_question_id)

      redirect_to student_quest_question_path(@quest, @next_question)
    else
      session[:return_to] ||= request.referer
    end
  end

  private

  def find_quest
    @quest = Quest.find(params[:quest_id])
  end

  def find_question
    @question = Question.find(params[:question_id])
  end

  def effort_params
    params.require(:effort).permit(:content)
  end

end
