class Question < ApplicationRecord
  belongs_to :challenge
  has_one :answer, dependent: :destroy
  has_many :efforts, dependent: :destroy
end
