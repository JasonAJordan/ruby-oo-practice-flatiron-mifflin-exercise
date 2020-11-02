class Employee

    attr_accessor :manager, :name, :salary
    @@all = []

    def initialize (name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self 

    end 

    def self.all 
        @@all 
    end 

    def manager_name 
        self.manager.name
    end 
    
    def self.paid_over (number)
        all.select {|all| all.salary > number}
    end 

    def self.find_by_department (department_name)
        dep = all.find {|all| all.manager.department == department_name}
        dep.manager.department
    end 

    def tax_bracket 
        
        @@all.select { |all| (((all.salary - self.salary).to_f).abs <= 1000 ) && all != self}
    end 

end
