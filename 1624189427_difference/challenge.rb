# Please return the elements that are in a but not in b

def difference_check(a, b)
  a.select { |item| !b.include?(item) }
end
