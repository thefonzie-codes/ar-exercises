require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(
  :name => "Surrey",
  :annual_revenue => 224000,
  :mens_apparel => false,
  :womens_apparel => true
  )

whistler = Store.create(
  :name => "Whistler",
  :annual_revenue => 19000000,
  :mens_apparel => true,
  :womens_apparel => false
  )

Yaletown = Store.create(
  :name => "Yaletown",
  :annual_revenue => 430000,
  :mens_apparel => true,
  :womens_apparel => true
  )

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each {|store| puts "#{store.name}, #{store.annual_revenue}"}

@mens_stores2 = Store.where("annual_revenue < 1000000", womens_apparel: false)

@mens_stores2.each {|store| puts "#{store.name}, #{store.annual_revenue}"}