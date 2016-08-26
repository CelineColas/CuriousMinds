class Effort < ApplicationRecord
  belongs_to :quest
  belongs_to :question

  i=0
  def number_of_correct_efforts
   if effort.content.downcase==answer.content.downcase
     effort.status="correct" or "true"
     i+=1
   else
     effort.statu= "wrong" or "false"
   end
   return i
  end

end
