class Challenge < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  has_many :questions
  has_many :quests

  def number_of_questions
    self.questions.count
  end
end
