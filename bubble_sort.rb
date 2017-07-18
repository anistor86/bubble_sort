#bubble_sort method, takes an array and sort it with bubble sort
def bubble_sort(array)
  #loop until everything is swapped (sorted)
  loop do
    swapped = false

    (array.length - 1).times do |i|
      #check if the array[i+1] element is bigger than array[i] element
      if (array[i+1].to_i < array[i].to_i)
        #swap position if bigger & set swapped to true
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    #if nothing is swapped (so the array is sorted), the method will never
    #enter the IF and the swapped variable would be false and will BREAK
    #if swapped is true it just jump the break and go back to the loop
    break if !swapped
  end

  #print inspect and return the array
  puts array.inspect
  return array
end

bubble_sort([4,3,78,2,0,2])
