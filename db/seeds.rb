# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

############# Seeding for Categories ##########################
Category.create(name: 'Health')
Category.create(name: 'Finance')
Category.create(name: 'Concierge')
Category.create(name: 'Law')
Category.create(name: 'Misc')
################################################################
############# Seeding for Salutations ##########################
Salutation.create(salutation: 'Mr')
Salutation.create(salutation: 'Ms')
Salutation.create(salutation: 'Mrs')
Salutation.create(salutation: 'Dr')
################################################################