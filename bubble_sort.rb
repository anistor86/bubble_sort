#bubble_sort method, takes an array and sort it with bubble sort
def bubble_sort(array)
  raise unless array.is_a?(Array)

  if array.empty? || array.length == 1
    return array
  else
    #loop until everything is swapped (sorted)
    loop do
      swapped = false

      (array.length - 1).times do |i|
        #check if a block is given
        if block_given?
          if yield(array[i+1]) < yield(array[i])
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        else
          if (array[i+1].to_i < array[i].to_i)
            #swap position if bigger & set swapped to true
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        end
      end

      #if nothing is swapped (the array is sorted) will BREAK the loop
      break if !swapped
    end
    return array
  end
end

#puts bubble_sort([4,3,78,2,0,2]){|x| x + 1}
#puts bubble_sort(["cacca", "ci", "cia", "ciao"]){|word| word.length}
def bubble_sort_by(array)
		bubble_sort(array, &Proc.new)
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  #like the spaceship operator this block return 1 if the element on the left
  #is bigger than the one on the right, -1 if the element on the right is
  #smaller or 0 if they are equal
  if (left.length - right.length < 0)
    -1
  elsif (left.length - right.length > 0)
    1
  else
    0
  end
end
