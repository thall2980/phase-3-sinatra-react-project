puts "🌱 Seeding walkers..."

Walker.create(name: "Steve", years_of_experience: 3, pace: fast)
Walker.create(name: "Rachel", years_of_experience: 1, pace: slow)
Walker.create(name: "Caroline", years_of_experience: 5, pace: medium)

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
