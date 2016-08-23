class Student::ChallengesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_challenge, only: [:show]

def index
  @challenges = Challenge.all

  if params[:category]
    @challenges = @challenges.where("category ILIKE ?", "%#{params[:category]}%")
  end
end

def show
end

private

def find_challenge
  @challenge = Challenge.find(params[:id])
end

end
