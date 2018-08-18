# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.create!([
  {
    name: 'BugSmash',
    location: 'Denver, CO',
    price: 0.00,
    description: "Join us for a fun evening of bug smashing!",
    starts_at: 100.days.from_now
  },
  {
    name: 'Hackathon',
    location: 'Austin, TX',
    price: 15.00,
    description: "Got a killer app idea you've been itching to work on? Join us at Hackathon!",
    starts_at: 120.days.from_now
  },
  {
    name: 'Kata Camp',
    location: 'Dallas, TX',
    price: 75.00,
    description: "Kata Camp is where develpoers go to practice their skills Kata style",
    starts_at: 150.days.from_now
  }
  ])
