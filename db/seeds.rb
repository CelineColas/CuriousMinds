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

  challenge_vars = Challenge.create!(title: 'Variables', description: 'Lorem ipsum dolor sit amet.', category: 'Ruby', difficulty: '2', teacher_id: hank.id)
  challenge_js = Challenge.create!(title: 'Javascript', description: 'Lorem ipsum dolor sit amet.', category: 'Front-end development', difficulty: '3', teacher_id: hank.id)
  challenge_rails = Challenge.create!(title: 'Rails', description: 'Lorem ipsum dolor sit amet.', category: 'Ruby', difficulty: '3', teacher_id: james.id)
  challenge_algo = Challenge.create!(title: 'Algorithm', description: 'Lorem ipsum dolor sit amet.', category: 'Mathematics', difficulty: '3', teacher_id: james.id)

  q1 = Question.create!(title: 'Question 1 dolor sit amet, consectetur adipisicing ?', challenge: challenge_algo)
  q2 = Question.create!(title: 'Question 2 dolor sit amet, consectetur adipisicing ?', challenge: challenge_vars)
  q3 = Question.create!(title: 'Question 3 dolor sit amet, consectetur adipisicing ?', challenge: challenge_rails)
  q4 = Question.create!(title: 'Question 4 dolor sit amet, consectetur adipisicing ?', challenge: challenge_js)
  q5 = Question.create!(title: 'Question 5 dolor sit amet, consectetur adipisicing ?', challenge: challenge_algo)
  q6 = Question.create!(title: 'Question 6 dolor sit amet, consectetur adipisicing ?', challenge: challenge_vars)
  q7 = Question.create!(title: 'Question 7 dolor sit amet, consectetur adipisicing ?', challenge: challenge_rails)
  q8 = Question.create!(title: 'Question 8 dolor sit amet, consectetur adipisicing ?', challenge: challenge_js)

  james_response = Answer.create(content: "Lorem ipsum dolor sit.", hint: "Lorem ipsum dolor.", question: q1)
  hank_response = Answer.create(content: "Lorem ipsum dolor sit.", hint: "Lorem ipsum dolor.", question: q4)
  mary_response = Answer.create(content: "Lorem ipsum dolor sit.", hint: "Lorem ipsum dolor.", question: q3)
  kelly_response = Answer.create(content: "Lorem ipsum dolor sit.", hint: "Lorem ipsum dolor.", question: q2)

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



