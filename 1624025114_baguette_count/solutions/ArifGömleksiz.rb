# Hellow please help out Louis, your favorite parisian baker!
# Please give back the cost of changing the oven baking temperature per day for Louis!
# He bakes baguettes ("B") and croissants ("C"), each time he starts cooking
# one or the other he has to adapt the temperature of the oven, this costs him 5 euros.
# don't forget it also costs him 5 euros to turn it on and off

def oven_cost(batches)
  # put your code here!
  return 0 if batches.empty?

  res = batches.reduce({ total: 10, prev: '' }) do |acc, food|
    next { total: acc[:prev] == food ? acc[:total] + 5 : acc[:total], prev: food }
  end
  res[:total]
end
