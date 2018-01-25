# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.destroy_all
[
  'The Doors',
  'The Doors',
  'Pink floyd',
  'Ozzy osborne ',
  'Tyga',
  'Snoop dog',
  'dr.dre'
].each do |name|
  Artist.create(name:name)
end
