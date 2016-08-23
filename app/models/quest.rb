class Quest < ApplicationRecord
  belongs_to :challenge
  belongs_to :student, class_name: "User"

  has_many :efforts
end
