#Дан целочисленный массив. 
#Найти количество элементов, расположенных после первого минимального .
arr = [1, -3, -10, 5 , -4 , 8, 2, 8, -10, 4, -6, 7]
arr_find=arr.each_with_index.select {|e, i| e==arr.min}.map &:last
puts arr.length-arr_find.first.to_i-1