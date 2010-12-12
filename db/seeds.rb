# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Champion.delete_all
Item.delete_all
User.delete_all

# Create first user
u = User.new({:email => 'admin@test.com', :password => 'manfred'})
u.save!

# Create champions
20.times do
  Champion.create({:name => Faker::Name.first_name, :description => Faker::Lorem.paragraph})
end

# Create items
40.times do
  Item.create({:name => Faker::Name.first_name, :description => Faker::Lorem.paragraph})
end
