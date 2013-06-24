# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
stars = [
  {
    first_name: 'Jennifer',
    last_name:  'Lawrence',
    city:       'Santa Monica',
    state:      'CA',
    birthdate:  Date.parse('Aug 15 1990'),
    movies: [
      'The Hunger Games',
      'Silver Linings Playbook',
      'Winter\'s Bone'
    ]
  },
  {
    first_name: 'Joseph',
    last_name:  'Gordon-Levitt',
    city:       'Los Angeles',
    state:      'CA',
    birthdate:  Date.parse('Feb 17 1981'),
    movies: [
      'Inception',
      'The Dark Knight Rises',
      'Looper'
    ]
  },
  {
    first_name: 'Kristen',
    last_name:  'Stewart',
    city:       'Los Angeles',
    state:      'CA',
    birthdate:  Date.parse('Aug 15 1990'),
    movies: [
      'Twilight',
      'Snow White and the Huntsmen'
    ]
  },
  {
    first_name: 'Channing',
    last_name:  'Tatum',
    city:       'Los Angeles',
    state:      'CA',
    birthdate:  Date.parse('April 26 1980'),
    movies: [
      '21 Jump Street'
    ]
  },
  {
    first_name: 'Anne',
    last_name:  'Hathaway',
    city:       'New York',
    state:      'NY',
    birthdate:  Date.parse('Nov 12 1982'),
    movies: [
      'Les Misérables'
    ]
  },
  {
    first_name: 'Chris',
    last_name:  'Himsworth',
    movies: []
  }
]

Star.delete_all

stars.each do |star_attrs|
  movies = star_attrs.delete(:movies)
  s = Star.create star_attrs
  movies.each do |movie|
   s.movies.create title: movie
  end
end