
# Hellow please help out Louis, your favorite parisian baker!
# Please give back the cost of changing the oven baking temperature per day for Louis!
# He bakes baguettes ("B") and croissants ("C"), each time he starts cooking
# one or the other he has to adapt the temperature of the oven, this costs him 5 euros.
# don't forget it also costs him 5 euros to turn it on and off

def oven_cost(batches)
  return 0 if batches.size.zero?

  costs = 10
  last_type = batches.first
  batches.each do |type|
    costs += 5 if last_type != type
    last_type = type
  end
  return costs
end
