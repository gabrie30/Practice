# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)
  uniques = []

  i = year_start
  while i <= year_end
    if no_repeat?(i)
      uniques << i
    end
    i += 1
  end
  uniques
end

def no_repeat?(year)
  if year.to_s.split("").uniq.length == 4
    return true
  end
  false
end


###
# def no_repeats(year_start, year_end)
#   i = year_start
#   no_repeats = []
#   while i <= year_end
#     if i.to_s.split("").uniq.length == 4
#       no_repeats << i
#     end
#   i += 1
#   end
# no_repeats
# end
###

p no_repeats(1234, 1234)
p no_repeats(1123, 1123)
p no_repeats(1980, 1987)

# describe "#no_repeats" do
#   it "should return a no repeat year" do
#     no_repeats(1234, 1234).should == [1234]
#   end

#   it "should not return a repeat year" do
#     no_repeats(1123, 1123).should == []
#   end

#   it "should return only those years that have no repeated digits" do
#     no_repeats(1980, 1987).should == [
#       1980,
#       1982,
#       1983,
#       1984,
#       1985,
#       1986,
#       1987
#     ]
#   end
# end