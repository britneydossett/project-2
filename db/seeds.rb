Destination.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Destination.create([{ city: 'London', country: 'England', books: ['The Hobbit', 'The Adventures of Sherlock Holmes', "The Cuckoo's Calling", "At Bertram's Hotel", "Bridget Jones's Diary", 'A Tale of Two Cities'], latitude: 51.500152, longitude: -0.126236},
                    { city: 'New York', country: 'USA', books: ['The Great Gatsby', 'The Age of Innocence', 'New York Diaries', "The Amazing Adventure of Kavalier & Clay"], latitude: 40.748817, longitude: -73.985428},
                    { city: 'Tuscany', country: 'Italy', books: ['The Divine Comedy', 'Under the Tuscan Sun', 'Season of Storms', 'The House of Medici', 'Agostino'], latitude: 43.318661, longitude: 11.330514},
                    { city: 'Sydney', country: 'Australia', books: ['In a Sunburned Country', 'Knockabout Girl', 'In the Land of Oz', 'The Secret River'], latitude: -33.865143, longitude: 151.209900},
                    { city: 'Riyadh', country: 'Saudi Arabia', books: ['Arabian Sands', 'Three Cups of Tea', 'Return to Babylon', 'Arabia of the Bedouins'], latitude: 24.711667, longitude: 46.724167},
                    { city: 'Mumbai', country: 'India', books: ['Life of Pi', "Holy Cow: An Indian Adventure", 'A Fine Balance', 'Gitanjali', 'Siddhartha'], latitude: 19.12441, longitude: 72.883301},
                    { city: 'Nairobi', country: 'Kenya', books: ['A Grain of Wheat', 'Coming to Birth', 'Half of a Yellow Sun', "A Primate's Memoir", 'Heart of Darkness'], latitude: 1.2833, longitude: 36.8167},
                    { city: 'Tokyo', country: 'Japan', books: ['The Guest Cat', 'Spring Snow', 'The Roads to Sata', 'Riding the Trains in Japan'], latitude: 35.689488, longitude: 139.691706},
                    { city: 'Lima', country: 'Peru', books: ['Inca Land', 'The White Rock', 'Trail of Feathers', 'Eight Feet in the Andes'], latitude: -11.93284, longitude: -76.641271},
                    { city: 'Moscow', country: 'Russia', books: ['Nicholas and Alexandra', 'Crime and Punishment', 'Mastering the Art of Soviet Cooking', 'Travels in Siberia', 'Doctor Zhivago'], latitude: 55.755663, longitude: 37.618328},
                    { city: 'Havana', country: 'Cuba', books: ['Dreaming in Cuba', 'Paradisio', 'The Man Who Loved Dogs', 'Cubana', 'Havana is a Really Big City'], latitude: 23.13364, longitude: -82.370494},
                    { city: 'Mykonos', country: 'Greece', books: ['The Iliad', 'Timeless Tales of Gods and Heros', 'The Lightning Thief',' Medea', 'Antigone', 'Elini'], latitude: 37.446389, longitude: 25.32855}
                    ])
