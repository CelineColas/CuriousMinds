class Challenge < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  has_many :questions, dependent: :destroy
  has_many :quests, dependent: :destroy

  def number_of_questions
    self.questions.count
  end
end
