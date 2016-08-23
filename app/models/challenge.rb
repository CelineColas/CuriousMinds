class Challenge < ApplicationRecord
  has_many :questions
  has_many :quests
end
