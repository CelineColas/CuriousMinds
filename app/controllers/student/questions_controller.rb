class Student::QuestionsController <  ApplicationController
  # before_action :find_challenge
  before_action :find_quest

  def show
    @question = Question.first
    if @question.save!
      # @question = Question.new --> Is it right ?
    else
      render :new
    end
  end

  private

  # def find_challenge
  #   @challenge = Challenge.find(params[:challenge_id])
  # end

  def find_quest
    @quest = Quest.find(params[:quest_id])
  end
end
