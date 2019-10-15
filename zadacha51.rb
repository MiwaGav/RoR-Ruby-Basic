#Дан целочисленный массив. 
#Найти количество элементов, расположенных после первого максимального.
arr = [1, -3, 5 , -4 , 8, 2, 8, -10, 4, -6, 7]
arr_find=arr.each_with_index.select {|e, i| e==arr.max}.map &:last
puts arr.length-arr_find.first.to_i-1