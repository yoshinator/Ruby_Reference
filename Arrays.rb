#ARRAYS
some_collection = ["a","b","c"] #
some_collection <<"d"
some_collection.push("d")
#both << and push adds a "d" as another element at the end of some_collection
some_collection.unshift("1")
#adds "1" as a new element to the beggining of some_collection
some_collection.first #returns first element can operate / change the array if called with another method for example first.insert
some_collection.last #return last element
some_collection.reverse #returns the array reversed non destructive
some_collection.reverse! #returns the array reversed destructive
some_collection.sort #returns sorted array, if numbers by size, if strings alphabetically. Non destructive
some_collection.sort! #returns sorted array, if numbers by size, if strings alphabetically. Destructive
some_collection.include?("what youre looking For") #boolean returns true if what youre looking for is in the array else it returns false.
some_collection.size
some_collection.length #both size and length tell you how many items are in the array
some_collection.pop(3) #just like regular pop but with this argument returns the 3 items at the end of the array
some_collection.shift(3)#just like regular shift but with argument returns the first 3 tiems of the array.
some_collection.insert(3,element) #allows you to insert element at 3rd index of some_collection
some_collection.last.insert(0,element) #allows you to insert an element at the last index of the array starting at the beggining of the each_with_index
#["peter", "fat tommy", "Little Jack", "John"].last.insert(0,"Big ") => ["peter", "fat tommy", "Little Jack", "Big John"]
some_collection.uniq #removes duplicates
some_collection.delete_at(index) #deletes array item at index


nested_collections[["a","b"],["c","d"],["1","2","3"]]
collection = nested_collections[0] #collection = ["a","b"]
collection[1] #=> "b"
#populate and array with a range of the_numbers
(1..10).to_a  #<=[1,2,3,4,5,6,7,8,9,10]
