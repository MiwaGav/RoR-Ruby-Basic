#Дан целочисленный массив. 
#Найти количество элементов, расположенных перед последним минимальным.
arr = [1, -3, -10 , -4 , 3, 2, 8, -10, 4, -6, 7]
arr_find=arr.each_with_index.select {|e, i| e==arr.min}.map &:last
puts arr_find.last