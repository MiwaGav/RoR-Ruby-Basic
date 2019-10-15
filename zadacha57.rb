#Дан целочисленный массив. 
#Найти индекс первого экстремального (то есть минимального или максимального) элемента.
arr = [8, -3, -10 , -4 , 3, 2, 8, -10, 4, -6, 7]
arr_find=arr.each_with_index.select {|e, i| e==arr.min || e==arr.max }.map &:last 

puts arr_find.first