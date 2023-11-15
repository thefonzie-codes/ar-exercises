require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

richmond = Store.create(
  :name => "Richmond",
  :annual_revenue => 1260000,
  :mens_apparel => false,
  :womens_apparel => true
  )

burnaby = Store.create(
  :name => "Burnaby",
  :annual_revenue => 300000,
  :mens_apparel => true,
  :womens_apparel => true
  )

gastown = Store.create(
  :name => "Gastown",
  :annual_revenue => 1900000,
  :mens_apparel => true,
  :womens_apparel => false
  )

puts Store.count

# class Store

#   def initialize name, annual_revenue, mens_apparel, womens_apparel
#     @name = name
#     @annual_revenue = annual_revenue
#     @mens_apparel = mens_apparel
#     @womens_apparel = womens_apparel
#   end

#   attr_reader :name

# end

# richmond = Store.new "Richmond", 1260000, false, true
# burnaby = Store.new "Burnaby", 300000, true, true
# gastown = Store.new "Gastown", 190000, true, false

# puts richmond.name