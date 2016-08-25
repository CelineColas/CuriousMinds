class Student::EffortsController < ApplicationController
  before_action :find_question
  before_action :find_quest
  # NOT USEFUL I THINK
  # def new
  #   @effort = Effort.new
  # end

  def create
    @effort = @question.efforts.new(content: effort_params[:content], quest_id: params[:quest_id])
    if @effort.save
      @next_question = Question.find((params[:question_id].to_i + 1).to_s)
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
