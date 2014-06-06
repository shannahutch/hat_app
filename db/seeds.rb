# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Hat.find_or_create_by(name: 'cowboy: ') do |hat|
  hat.description = 'A country hat!'
end

Hat.find_or_create_by(name: 'bonnet: ') do |hat|
 hat.description = 'A flowery girlie hat!'
end