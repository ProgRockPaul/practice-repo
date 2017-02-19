# When I order pizza the cost is returned
def order_pizza(dough, ingredients)
  cost = 10

  cost += 4 if dough == :gluten_free

  ingredients.each do |ingredient|
    case ingredient
      when :cheese
        ingredient_cost = 2
      when :pepperoni
        ingredient_cost = 3
      when :green_peppers
        ingredient_cost = 1
      when :anchovies
        ingredient_cost = 5
      when :sausage
        ingredient_cost = 6
      when :chicken
        ingredient_cost = 3
    end
    cost += ingredient_cost
  end
# end after do
  return cost
end
# Immediately end a def
  pepperoni_pizza_cost = order_pizza(:regular, [:cheese, :pepperoni])

  puts "Cost of pepperoni pizza is #{pepperoni_pizza_cost}"

  glueten_free_pizza_cost = order_pizza(:gluten_free, [:green_peppers, :anchovies])
  puts "Cost of gluten free pizza is #{glueten_free_pizza_cost}"

  meat_lovers_pizza_cost = order_pizza(:regular, [:pepperoni, :sausage, :chicken])
  puts "Cost of meat lovers pizza is #{glueten_free_pizza_cost}"
# if you want your computer to remember something you have to save it as a variable.
#
# charge_card_card()
