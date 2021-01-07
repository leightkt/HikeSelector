Userhike.destroy_all
Hike.destroy_all
User.destroy_all


Hike.create(name: "Lookout Mountain", location: "Golden, CO", dog_friendly: true, distance: 4.4, elevation: 705, difficulty: "Intermediate")
Hike.create(name: "Bear Peak", location: "Boulder, CO", dog_friendly: true, distance: 5.7, elevation: 2541, difficulty: "Advanced")
Hike.create(name: "Mt Galbraith", location: "Golden, CO", dog_friendly: true, distance: 4, elevation: 928, difficulty: "Intermediate")
south_mesa = Hike.create(name: "South Mesa", location: "Boulder, CO", dog_friendly: true, distance: 3.1, elevation: 508, difficulty: "Beginner")
Hike.create(name: "Grizzly Peak", location: "Loveland, CO", dog_friendly: true, distance: 5, elevation: 1635, difficulty: "Advanced")
Hike.create(name: "Mt Bierstadt", location: "Silver Plume, CO", dog_friendly: true, distance: 7.5, elevation: 2782, difficulty: "Advanced")
Hike.create(name: "Waterton Canyon", location: "Louviers, CO", dog_friendly: false, distance: 6.2, elevation: 700, difficulty: "Beginner")


mb = User.create(username: "mb", password_string: "pw")

Userhike.create(user_id: mb.id, hike_id: south_mesa.id)
