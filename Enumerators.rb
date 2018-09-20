#each returns THE ORIGINAL COLLECTION
some_collection.each do |letter|
  puts "#{letter} holds the value of element in collection"
  # the return value of this block is the entire collection in this example called some_collection it will be unchanged
end

#.collect or .map (both do the same thing). The return value of this block is the modified collection. This is useful if you need to change some_collection with out destroying it and passing the new value into some other array or hash
some_collection.collect do |letter|
  puts "#{letter} holds the value of an element in the collection and changes on each iteration"
end

# While these two ^above are similar, there are times when it makes sense to use one over the other. If you need the return value of your method to be a collection that's been modified by what's happening within the block, then .collect is for you. Of course, it's quite possible to work with .each to accomplish that. One way is to make a new "placeholder" (array or hash) in memory and within the method definition, and then return that new placeholder as the last line of the method:

#each_with_index returns THE ORIGINAL COLLECTION. It has  a handy counter built in for you.
[:foo, :bar, :baz].each_with_index do |value, index|
    puts "#{index}: #{value}"
end
#output
# 0: foo
# 1: bar
# 2: baz
#returns => [:foo, :bar, :baz]


#each_with_index passing an argument returns THE ORIGINAL COLLECTION  our handy counter starts from your argument in this example it starts at 2
[:foo, :bar, :baz].each.with_index(2) do |value, index|
    puts "#{index}: #{value}"
end
#output notice that index is starting at 2 instead of 0
# 2: foo
# 3: bar
# 4: baz
#returns => [:foo, :bar, :baz]

#select returns A NEW COLLECTION containning all of the elements in the submitted collection for which the blocks conditional is true. That means for each iteration, if the block evaluates to true, the element yielded to that iteration will be kept in the return value array.
[1,2,3,4,5].select do |number|
  x.even? #here any conditional is valid you can use number % 2 != 0 which would return all odd numbers [1,3,5]
end #=> returns [2,4]


#all? returns true or false. The rule for the #all? enumerator is that the block passed to it must return true for every iteration for the entire #all? expression or method to return true. If we introduce an even number to the collection, the return value will change.
all_odd = [1,3,5].all? do |number| #as you can see you can also assign a variable at the beggining of enumerators. Here we assigned all_odd this method could have just been called on [1,3,5] with the assignment. The variable will take the return value of the method.
  number.odd? # Will evaluate to true for 1, true for 3 and true for 5
end #=> true
all_odd #=> true


#none? Returns TRUE or FALSE. The opposite of #all?, We are interested in none of the elements in a collection producing a true expression within the block passed to #none?.
[1,3].none? do |i|
  i.even? #=> true
end #returns true for the block


#any? Returns TRUE if the code in the block evaluates to true for ANY element in the collection flase if none them do.
[1,2,58,100].any? do |i|
  i > 99 #=> true
end


#include? Returns TRUE if the collection contains the element you passed it in the argument. FALSE if it does not.
the_numbers = [4,8,15,16,23,42]
the_numbers.include?(42)   #=> true
the_numbers.include?(6)   #=> false


#detect or #find Returns THE FIRST ELEMENT for which a condition is true.
#Note: detect and find are two names for the same method. We'll use detect, but they can be used interchangeably.
[1,2,3,4].find do |i|
  i.odd? #=> 1
end

[1,2,3,4].find do |i|
  i.even? #=> 2
end

[1,2,3,4].find do |i|
  i.is_a?(String) #=> nil
end

#reject returns AN ARRAY with the elements for which the block is false.
[1,2].reject do |i|
  i.even?
end #=> [1]

#delete_if Returns AN ARRAY
#The .delete_if method, will delete from the collection any items that return true for a certain condition
[1, 2, 4, 7].delete_if do |num|
  num.odd?
end #=> [2, 4]

#Note ALL METHODS CAN BE USED WITH {} instead of do end blocks. Use curly braces when the whole statement can be written clearly on one line.
