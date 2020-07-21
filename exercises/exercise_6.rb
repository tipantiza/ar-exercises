require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :greater_than_or_equal_to => 40, :less_than_or_equal_to => 200}
  validates :store_id, presence: true
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Landon", last_name: "Tipantiza", hourly_rate: 100)
@store1.employees.create(first_name: "Rheema", last_name: "Timmer", hourly_rate: 150)

@store2.employees.create(first_name: "Jalayna", last_name: "Tipantiza", hourly_rate: 50)
@store2.employees.create(first_name: "Jalysa", last_name: "Cancino", hourly_rate: 50)
@store2.employees.create(first_name: "German", last_name: "Tipantiza", hourly_rate: 100)

@store4.employees.create(first_name: "Felipe", last_name: "Arias", hourly_rate: 60)
@store4.employees.create(first_name: "Carlos", last_name: "Cruz", hourly_rate: 60)
@store4.employees.create(first_name: "Nina", last_name: "Stubs", hourly_rate: 40)
