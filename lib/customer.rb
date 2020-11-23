class Customer

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    # new_meal creates an instance of meal, passing self in 
    # as the customer argument
    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end

    # returns array of Meal instances associated with 
    # this customer (self)
    def meals
        Meal.all.select do |meal|
            meal.customer == self
        end
    end
        
    # returns array of Waiter instances associated with customer(self)
    def waiters
        meals.map do |meal|
            meal.waiter
        end
    end    
  
end