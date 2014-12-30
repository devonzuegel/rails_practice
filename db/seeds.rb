# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ---------------------------------------------------------------------------

# The create! method is just like the create method, except it raises an
# exception (Section 6.1.4) for an invalid user rather than returning
# false. This behavior makes debugging easier by avoiding silent errors.
User.create!(
	name:  "Example User",
	email: "example@railstutorial.org",
	password:              "foobar",
	password_confirmation: "foobar",
	admin: true
)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"

  User.create!(
  	name:  name,
  	email: email,
  	password:              password,
  	password_confirmation: password
  )
end
