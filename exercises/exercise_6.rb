require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 55)
@store2.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 65)
@store2.employees.create(first_name: "Bob", last_name: "Johnson", hourly_rate: 70)
@store1.employees.create(first_name: "Alice", last_name: "Williams", hourly_rate: 75)