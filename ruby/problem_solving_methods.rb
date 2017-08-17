def search_array(arr, integer)
  counter = 0
  found_at = nil
  while counter < arr.length
    if arr[counter] == integer
      found_at = counter
    end
    counter += 1
  end
  found_at
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)


def fibonacci(integer)
  num1=0
  num2=1
  sum = 0
  fib_numbers = []
  counter = 0
  while counter < integer
    sum = num1 + num2
    fib_numbers << num1
    num1 = num2
    num2= sum
    counter += 1
  end
  fib_numbers
end

p fibonacci(6)
p fibonacci(100)



#for an array of two numbers
#if the first number is larger than the second
  #swap positions
#otherwise, leave it in the same position

def bubble_sort(array)
  if array[0] > array[1]
    swap = array[1], array[0]
    swap
  else
    array
  end
end

p bubble_sort([5,3])
p bubble_sort([3,5])






