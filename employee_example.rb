# # employee1 = ['Sami', 'Morco', 100000000, true]
# # employee2 = ['Andy', 'Morco', 100000000, true]

# # puts employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " a year."

# # puts "#{employee1[0]} #{employee1[1]} makes #{employee1[2]} a year"


# employee1 = {'first_name' => 'Sami', 'last_name' =>'Morco', 'salary' => 1000000, 'active' => true}
# employee2 = {'first_name' => 'Andy', 'last_name' =>'Zhao', 'salary' => 10000, 'active' => true}

# puts "#{employee1['first_name']} #{employee1['last_name']}."

# employee3
require 'faker'

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active
  def initialize(input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @salary = input_hash[:salary]
    @active = input_hash[:active]
  end
  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end
  def give_annual_raise
    @salary = @salary * 1.05
  end
  def full_name
    if last_name.end_with?("s")
      puts first_name + " " + last_name + ", Esquire"
    elsif 
      puts first_name + " " + last_name
    end
end
end
employee1 = Employee.new(first_name: 'Majora', last_name: 'Carter', salary: 100000000, active: true)
employee2 = Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 100000000, active: true)
employees = []
100.times do
  employees << Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: Faker::Number.number(5), active: true)
  
end

employees.each do |employee|
  puts employee.full_name
end

