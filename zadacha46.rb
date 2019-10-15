#Дан целочисленный массив. Найти максимальный отрицательный элемент.
arr = [1, -3, 5 , -4 , 3, 2, 8, -19, 4, -6, 7]
arr_chet=arr.select { |num|  num.negative?  } 
puts arr_chet.max