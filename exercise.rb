require "./location.rb"
require "./trip.rb"

cities = [
"Toronto",
"Ottawa",
"Montreal",
"Quebec City",
"Halifax",
"St. John's"
]

trip = Trip.new()

cities.each do |city|
  trip.add_steps(Location.new(city))
end

trip.iterate
