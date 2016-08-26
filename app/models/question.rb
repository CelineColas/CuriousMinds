class Question < ApplicationRecord
  belongs_to :challenge
  has_one :answer
  has_many :efforts
end
