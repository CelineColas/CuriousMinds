class Student::EffortsController < ApplicationController
  before_action :find_question
  before_action :find_quest
  # NOT USEFUL I THINK
  # def new
  #   @effort = Effort.new
  # end

  def create
    @effort = @question.efforts.new(effort_params)
    @effort.question = @question
    @effort.quest = @quest

    # if @question.answer.content.downcase == @effort.content.downcase --> Doesn't work !!!
    #   @effort.status = "correct"
    # else
    #   @effort.status = "wrong"
    # end
    if @effort.save!

      @all_questions = @quest.challenge.questions.to_a
      @answered_questions = @quest.efforts.map(&:question)
      @remaining_questions = @all_questions - @answered_questions

      unless @remaining_questions.empty?
        next_question_id = @remaining_questions.first.id
        puts @question.id
        @question = Question.find(next_question_id)
        puts @question.id
        redirect_to student_quest_question_path(@quest, @question)
      else
        # Takes them back to profile if finished
        # TODO - change this to results page or flash message?
        redirect_to student_profile_path
      end
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
