class Manager

    attr_accessor :name, :age, :department
    @@all = []

    def initialize (name, age, department)
        @name = name 
        @age = age
        @department = department
        @@all << self 
    end 


    def self.all 
        @@all
    end 

    def employees 
        Employee.all.select {|employees| employees.manager  == self}
    end 

    def hire_employee (name, number)
        Employee.new(name, number, self)
    end 

    def self.all_departments 
        Manager.all.select {|manager| manager.department}
    end 

    def self.average_age 
        list = Manager.all.map {|manager| manager.age}
        average = list.sum / list.size.to_f
        average
    end 

end
