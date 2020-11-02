require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

joe = Manager.new("Joe", 55, "Jokes")
joey = Manager.new("Joey", 1000, "Naps")
jason = Employee.new("Jason", 5000, joe)

# puts joe.name
# puts joe.department 

joe.hire_employee("Keith", 5500)
joey.hire_employee("Placeholder", 1000)
#p joe.employees
#p Manager.all_departments
#p Manager.average_age

#binding.pry
#p jason.manager_name 
#p Employee.find_by_department("Jokes")
p jason.tax_bracket


#binding.pry
puts "done"
