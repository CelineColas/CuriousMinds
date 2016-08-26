class Student::Challenges::QuestsController < ApplicationController
  before_action :find_challenge

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.where(student: current_user, challenge: @challenge, status: "running").first_or_initialize

    if @quest.save!
      # find the first question
      question = @challenge.questions.order(:id).first
      redirect_to student_quest_question_path(@quest, question)
    else
      render :new
    end
  end

  private

  def find_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end
end
