require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :belongs_to, presence: true

  def validate(record)
    if record.hourly_rate < 40 || record.hourly_rate > 200
      record.errors.add :base, "Rate must be between 40 and 200"
    end
  end

end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {:greater_than => 0}
end

puts "Store name: "
new_store_name = gets.chomp
new_store = Store.new(new_store_name)