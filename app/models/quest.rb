class Quest < ApplicationRecord
  belongs_to :challenge
  has_many :efforts
end
