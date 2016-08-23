class Student::Challenges::QuestsController < ApplicationController

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(quest_params)
    @quest.user = current_user
    if @quest.save
      redirect_to quest_path(@quest)
    else
      render :new
    end
  end

  private

  def quest_params
    params.require(:quest).permit(:status, :challenge_id)
  end

  def set_car
    @quest = Quest.find(params[:id])
  end
end
