
# Hellow please help out Louis, your favorite parisian baker!
# Please give back the cost of changing the oven baking temperature per day for Louis!
# He bakes baguettes ("B") and croissants ("C"), each time he starts cooking
# one or the other he has to adapt the temperature of the oven, this costs him 5 euros.
# don't forget it also costs him 5 euros to turn it on and off

def oven_cost(batches)
  # put your code here!
  batches.empty? ? cost = 0 : cost = 10
  batches.each_with_index do |item, index|
    cost += 5 if item != batches[index-1] unless index == 0 # if item on index x is not the same as at x-1 add 5€
  end
  cost
end
