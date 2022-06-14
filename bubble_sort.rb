def bubble_sort(array)
  for i in 0..array.length-2
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      for j in 0..array.length-2-i
        if array[j] > array[j+1]
          array[j], array[j+1] = array[j+1], array[j]
        end
        j += 1
      end
    i +=1
  end
  array
end

array = [6, 3, 7, 2, 8, 1, 9, 5, 4]
p bubble_sort(array)

