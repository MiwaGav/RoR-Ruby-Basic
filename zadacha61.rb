#Дан целочисленный массив. Найти два наибольших элемента.
arr = [1, 3, 5 , 4 , 3, 2, 8, 10, 4, 6, 7]
arrdva=arr.delete(arr.max)
puts arrdva.to_s+' '+arr.max.to_s