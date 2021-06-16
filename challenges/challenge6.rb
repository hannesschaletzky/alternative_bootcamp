families = [
  {
    "dad" => 32,
    "mum" => 28,
    "daughter" => 5,
    "son" => 2
  },
  {
    "dad" => 45,
    "mum" => 43,
    "daughter" => 18,
    "son" => 16
  },
  {
    "dad" => 48,
    "mum" => 39,
    "daughter" => 21,
    "son" => 5
  },
  {
    "dad" => 35,
    "mum" => 36,
    "daughter" => 12,
    "son" => 18
  },
  {
    "dad" => 49,
    "mum" => 50,
    "daughter" => 25,
    "son" => 26
  },
  {
    "dad" => 55,
    "mum" => 39,
    "daughter" => 19,
    "son" => 22
  }
]


def sum_all(families)
  # add your code here
end

def sum_males(families)
  # add your code here
end

def avg_age_diff_daugther_son(families)
  # add your code here
end

# Return the following (to simplify all families have a mum,dad, daughter and son)
# return the sum of all ages from all families
puts sum_all(families) == 688
# return the sum of all male ages from all families
puts sum_males(families) == 353
# return the average age difference between daughter and son (two decimals rounded)
puts avg_age_diff_daugther_son(families) == 5.17
# puts vowels_count("aperol") == 3
