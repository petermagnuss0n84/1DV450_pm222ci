# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resource.delete_all
r1 = Resource.create(:namn => "test", :url => "http://youtube.com", :description => "länk till youtube")
r2 = Resource.create(:namn => "feber", :url => "http://feber.com", :description => "länk till feber")
r3 = Resource.create(:namn => "bild", :url => "http://sonnyparlin.com/wp-content/uploads/2012/04/ruby-on-rails.jpg", :description => "bild på ruby")

ResourceType.delete_all
rt1 = ResourceType.create(:resource_type => "link")
rt2 = ResourceType.create(:resource_type => "picture")

User.delete_all
u1 = User.create(:firstname => "Peter", :surname => "Magnusson", :email => "petermagnusso84@gmail.com")
u2 = User.create(:firstname => "Eric", :surname => "Forsberg", :email => "eric85@gmail.com")

Licence.delete_all
l1 = Licence.create(:licence_typ => "GNU")
l2 = Licence.create(:licence_typ => "MIT")

#Tag.delete_all
#t1 = Tag.create(:tag => "Tagg1")
#t2 = Tag.create(:tag => "Tagg2")
#t3 = Tag.create(:tag => "Tagg3")


rt1.resources << r1
u1.resources << r1
l1.resources << r1
#t3.resources << r1

rt1.resources << r2
u1.resources << r2
l1.resources << r2
#t1.resources << r2

rt2.resources << r3
u2.resources << r3
l2.resources << r3
#t2.resources << r3
