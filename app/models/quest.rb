class Quest < ApplicationRecord
  belongs_to :challenge
  belongs_to :student, class_name: "User"

  has_many :efforts

  def number_of_correct_efforts
    efforts.where(status: "correct").count
  end

  def completion_percentage
    (efforts.count / challenge.number_of_questions) * 100
  end

  def correct_percentage
    (number_of_correct_efforts / challenge.number_of_questions) * 100
  end
end
