array = [1, 2, 16, 3, 4, 5, 6]

 def my_select(collection)
  new_selection = [] 
   i = 0
   while i < collection.length
 	  if yield(collection[i])
 	   	new_selection << collection[i]
	  end
 	  i += 1
     end
  new_selection #return the modified array
 end

my_select(array.sort) {|num| num.even?}

def my_each(array)
  i = 0
  while i < array.length
    yield array[i]
      i += 1
     end
     array
 end

 my_each(array) {|i| i}

def yield_example
	puts "Hi I'm having a nice day."
	yield if block_given?
	puts "How did you get here?!"
end

puts yield_example {puts "I AM A YIELD BLOCK INTERUPTING UR CODE"} 