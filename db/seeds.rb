puts "🌱 Seeding spices..."

# Seed your database here
User.create(first_name: "tyler", last_name: "dira")
User.create(first_name: "Shane", last_name: "Jung")
User.create(first_name: "Brandon", last_name: "Hyun")
User.create(first_name: "Abi", last_name: "Soni")


Favorite.create(title: "Killer Bean Forever", genre: "Action", rating: 2, comments: "Horrible movie, worth the watch", user_id: 1)
Favorite.create(title: "Interstellar", genre: "Sci-fi", rating: 10, comments: "Best movie", user_id: 3)
puts "✅ Done seeding!"
