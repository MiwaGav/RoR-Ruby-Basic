#Дан целочисленный массив. Упорядочить его по убыванию.
arr = [1, -3, 5 , -4 , 3, 2, 8, -10, 4, -6, 7]
arr_sort=arr.sort {|a, z| z<=>a}
puts arr_sort