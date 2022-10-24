puts "🌱 Seeding walkers..."

Walker.create(name: "Steve", years_of_experience: 3, pace: "fast")
Walker.create(name: "Rachel", years_of_experience: 1, pace: "slow")
Walker.create(name: "Caroline", years_of_experience: 5, pace: "medium")

puts "🌱 Seeding dogs..."

Dog.create(name: "Rex", owner: "Bill", breed: "Lab", temperament: "friendly", age: 2)
Dog.create(name: "Pugsly", owner: "Jess", breed: "Pug", temperament: "lazy", age: 4)
Dog.create(name: "Lassie", owner: "Frank", breed: "Golden Retriever", temperament: "friendly", age: 4)
Dog.create(name: "Fido", owner: "Patrick", breed: "Dalmation", temperament: "energetic", age: 5)
Dog.create(name: "Skip", owner: "Lauren", breed: "Corgi", temperament: "energetic", age: 3)
Dog.create(name: "Lady", owner: "Jen", breed: "Poodle", temperament: "sassy", age: 6)
Dog.create(name: "Gidget", owner: "Charlie" , breed: "Chihuahua", temperament: "friendly", age: 4)
Dog.create(name: "Chase", owner: "Tyler", breed: "Blue Nose Pitbull", temperament: "energetic", age: 2)

puts "🌱 Seeding appointments..."

Appointment.create(date: "10-26-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "10-28-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "10-30-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "10-31-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "11-15-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "11-21-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "11-30-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "12-05-2022", dog_id:rand(1..8), walker_id:rand(1..3))
Appointment.create(date: "12-10-2022", dog_id:rand(1..8), walker_id:rand(1..3))

puts "✅ Done seeding!"
