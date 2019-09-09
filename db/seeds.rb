# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Quiz.create([{title: "basic intervals", description: "Identify basic intervals (m2 - M7) based on treble clef staff notation", img_url: "https://2.bp.blogspot.com/-8puHOjL95po/WOTCW2K1keI/AAAAAAAAAj8/tyNZP4_gT8oochfnOHpEtHmJGoANae6KwCLcB/s1600/harmonic%2Bintervals.png"}])

# Question.create([{img_url: "https://i.imgur.com/ecdRsyj.png", instructions: "Which harmonic interval is displayed in the image? Select the correct option below and submit your response.", quiz_id: 1}])

Answer.create([{content: "m6", is_correct: false, question_id: 1}, {content: "P5", is_correct: false, question_id: 1}, {content: "M6", is_correct: true, question_id: 1}, {content: "m7", is_correct: false, question_id: 1}])