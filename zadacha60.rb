#Дан целочисленный массив. 
#Найти количество элементов, между первым и последним максимальным.
arr = [1, -3, 8, -4 , 3, 2, 8, -10, 4, -6, 7]
arr_find=arr.each_with_index.select {|e, i| e==arr.max}.map &:last
puts arr_find.last.to_i-arr_find.first.to_i-1