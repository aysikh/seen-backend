# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all
Review.destroy_all

amy = User.create(
  email: "amy@gmail.com", 
  firstname: "amy", 
  lastname: "sikhammountry", 
  password: "nugget"
)

malaika = User.create(
  email: "malaika@gmail.com", 
  firstname: "malaika", 
  lastname: "english", 
  password: "123"
)

darwin = User.create(
  email: "darwin@gmail.com", 
  firstname: "darwin", 
  lastname: "irby", 
  password: "123"
)

life360 = Company.create(
  name: "Life360", 
  description: "Life360 is a wellness company that brings peace of mind to families all over the world. The company’s app helps families keep tabs on family members by showing their whereabouts, sharing if they’re currently driving and even marking favorite routes that each member likes to take. Life360 is available in monthly subscriptions, so families can have constant peace of mind about the safety of their loved ones.", 
  size: "100-250", 
  location: "San Francisco", 
  industry: "Technology"
)

# https://www.builtinsf.com/company/life360

benchling = Company.create(
  name: "Benchling", 
  description: "We're on a mission to expand and accelerate life science research & development. Biotech has the potential to solve humanity’s most pressing challenges: disease, renewable energy, clean water and hunger. The brightest minds are working on these problems but they are equipped with archaic tools - that's where we come in. Benchling makes life science research faster and helps unearth the solutions to global issues.",
  size: "250-500",
  location: "San Francisco",
  industry: "Technology"
)

  # https://www.builtinsf.com/company/benchling

sensortower = Company.create(
  name: "Sensor Tower", 
  description: "Sensor Tower helps businesses navigate the multi-billion dollar mobile app ecosystem. We're on a mission: To Be the Trusted Source of Mobile Insights. We provide investors, mobile app developers, and brands with the competitive data they need to be successful in the mobile ecosystem. We serve independent and Fortune 500 customers alike, spanning mobile gaming, travel & hospitality, finance, and entertainment verticals.",
  size: "50-100",
  location: "San Francisco", 
  industry: "Technology"
) 
  # https://www.builtinsf.com/company/sensor-tower

  