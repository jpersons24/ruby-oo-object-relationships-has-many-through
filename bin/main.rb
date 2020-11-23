require_relative './lib/customer.rb'
require_relative './lib/meal.rb'
require_relative './lib/waiter.rb'



sam = Customer.new("Sam", 27)
terrance = Customer.new("Terrance", 27)
pat = Waiter.new("Pat", 2)
alex = Waiter.new("Alex", 5)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)

sam.new_meal(pat, 50, 10)
sam.new_meal(alex, 20, 3)
pat.new_meal(sam, 30, 5)
terrance.new_meal(jason, 50, 6)
terrance.new_meal(andrew, 60, 8)
binding.pry
terrance.new_meal(yomi, 30, 4)




