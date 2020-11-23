class Waiter

    attr_accessor :name, :yrs_exp

    @@all = []

    def initialize(name, yrs_exp)
        @name = name
        @yrs_exp = yrs_exp
        @@all << self
    end

    def self.all
        @@all
    end

    # new_meal creates an instance of Meal and passes self in
    # as argument for waiter
    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.waiter == self
        end
    end

    # returns the Customer instance associated with the meal that received the largest tip
    def best_tipper
        best_tip_meal = meals.max do |meal_1, meal_2| 
            meal_1.tip <=> meal_2.tip
        end

        best_tip_meal.customer
    end

end