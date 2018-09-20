#each
some_collection.each do |letter|
  puts "#{letter} holds the value of element in collection"
  puts "the return value of this block is the entire collection"
end



#each_with_index
some_collection.each_with_index do |value, index|
    puts "#{index}: #{value}"
end

[:foo, :bar, :baz].each.with_index(2) do |value, index|
    puts "#{index}: #{value}"
end
#output notice the index is starting at 2
# 2: foo
# 3: bar
# 4: baz

#all?
all_odd = [1,3].all? do |number|
  number.odd? # Will evaluate to true for 1, true for 3
end #=> true
all_odd #=> true
#The rule for the #all? enumerator is that the block passed to it must return true for every iteration for the entire #all? expression or method to return true. If we introduce an even number to the collection, the return value will change.

#none?
[1,3].none?{|i| i.even?} #=> true
#Imagine the opposite of #all?, a method #none?, where we are interested in none of the elements in a collection producing a true expression within the block passed to #none?.

#any?
[1,2,100].any?{|i| i > 99} #=> true


#The #any? enumerator will return true if at least one iteration of the block evaluates to true, but false if none of them do.
#include?
the_numbers = [4,8,15,16,23,42]
the_numbers.include?(42)   #=> true
the_numbers.include?(6)   #=> false

#select
[1,2,3,4,5].select do |number|
  number.even?
end #=> [2,4]
#the return value is a new array containing all the elements of the collection that causes the block passed to #select to return true. That means for each iteration, if the block evaluates to true, the element yielded to that iteration will be kept in the return value array.

#detect or #find
#Note: detect and find are two names for the same method. We'll use detect, but they can be used interchangeably.
[1,2,3].detect{|i| i.odd?} #=> 1
[1,2,3].find{|i| i.odd?} #=> 1
[1,2,3,4].detect{|i| i.even?} #=> 2
[1,2,3,4].detect{|i| i.is_a?(String)} #=> nil

#reject
[1,2].reject{|i| i.even?} #=> [1]
#will return an array with the elements for which the block is false.
