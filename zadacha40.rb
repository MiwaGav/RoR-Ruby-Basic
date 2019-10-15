#Дан целочисленный массив. Найти количество максимальных элементов.
arr = [1, -3, 5,8 , -4 , 8, 2, 8, -10, 4, -6, 7]
arr_find=arr.each_with_index.select {|e, i| e==arr.max}.map &:last
puts arr_find.length