# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

# Challenge.destroy_all
# User.destroy_all
# Question.destroy_all

ActiveRecord::Base.connection.disable_referential_integrity do
  User.destroy_all
  Challenge.destroy_all
  Question.destroy_all

  hank = User.create!(email: "hank@gmail.com", password: "lolipop", name: Faker::Name.name,
    school: Faker::Educator.secondary_school, experience: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, voluptate.")

  james = User.create!(email: "james@gmail.com", password: "pierreiscool", name: Faker::Name.name,
  school: Faker::Educator.secondary_school, experience: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, voluptate.")

  challenge_vars = Challenge.create!(title: 'Variables', description: 'Questions for curious students', category: 'Ruby', difficulty: '2', teacher_id: hank.id)
  challenge_js = Challenge.create!(title: 'Javascript', description: 'Learn about technology.', category: 'Front-end development', difficulty: '3', teacher_id: hank.id)
  challenge_rails = Challenge.create!(title: 'Rails', description: 'Update your knowledge on computers.', category: 'Ruby', difficulty: '3', teacher_id: james.id)
  challenge_algo = Challenge.create!(title: 'Algorithm', description: 'Try to answer correctly to all questions. Can you?', category: 'Mathematics', difficulty: '3', teacher_id: james.id)

  q1 = Question.create!(title: 'Question 1: How is it called the device that can be instructed to carry out an set of arithmetic or logical operations automatically?', challenge: challenge_algo)
  q2 = Question.create!(title: 'Question 2: Which is the best website for students?', challenge: challenge_vars)
  q3 = Question.create!(title: 'Question 3: Please name an operating system.', challenge: challenge_rails)
  q4 = Question.create!(title: 'Question 4: Which is you favorite programming language?', challenge: challenge_js)
  q5 = Question.create!(title: 'Question 5: How is it called the closest star to Earth?', challenge: challenge_algo)
  q6 = Question.create!(title: 'Question 6: What is the capital of Belgium?', challenge: challenge_vars)
  q7 = Question.create!(title: 'Question 7: Which animal is the king of the jungle?', challenge: challenge_rails)
  q8 = Question.create!(title: 'Question 8: What is the sum of 5+2?', challenge: challenge_js)

  james_response = Answer.create(content: "computer", hint: "Your laptop is one of them.", question: q1)
  hank_response = Answer.create(content: "Ruby", hint: "Ruby, Java, C, HTML", question: q4)
  mary_response = Answer.create(content: "Windows", hint: "windows, linux, macintosh", question: q3)
  kelly_response = Answer.create(content: "Curious Minds", hint: "You are usng it right now!", question: q2)

end




# 10.times do
# User.create!(email: Faker::Internet.email, password: Faker::Internet.password, name: Faker::Name.name,
#   school: Faker::Educator.secondary_school, experience: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, voluptate.",
#   teacher: false)
# end

# Challenge.create!(title: 'Design a user experience', description: 'Lorem ipsum dolor sit amet.', category: 'Design', difficulty: '5', teacher_id: )
# Challenge.create!(title: 'HTML', description: 'Lorem ipsum dolor sit amet.', category: 'Front-end development', difficulty: '1', teacher_id: )
# Challenge.create!(title: 'CSS', description: 'Lorem ipsum dolor sit amet.', category: 'Front-end development', difficulty: '1', teacher_id: )
# Challenge.create!(title: 'Adobe', description: 'Lorem ipsum dolor sit amet.', category: 'Design', difficulty: '4', teacher_id: )
# Challenge.create!(title: 'Algebra', description: 'Lorem ipsum dolor sit amet.', category: 'Mathematics', difficulty: '2', teacher_id: )
# Challenge.create!(title: 'Logic', description: 'Lorem ipsum dolor sit amet.', category: 'Mathematics', difficulty: '2', teacher_id: )
# Challenge.create!(title: 'Create a landing page', description: 'Lorem ipsum dolor sit amet.', category: 'Design', difficulty: '1', teacher_id: )


# Question.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing ?',challenge_id: )
# Question.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing ?',challenge_id: )



