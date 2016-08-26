class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attachment :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenges, foreign_key: :teacher_id, dependent: :destroy
  has_many :quests,     foreign_key: :student_id, dependent: :destroy

  has_many :efforts, through: :quests, dependent: :destroy
end
