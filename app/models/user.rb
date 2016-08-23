class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenges, foreign_key: :teacher_id
  has_many :quests,     foreign_key: :student_id

  has_many :efforts, through: :quests
end
