#Дан целочисленный массив. Найти два наименьших элемента.
arr = [1, 3, 5 , 4 , 3, 2, 8, 10, 4, 6, 7]
arrdva=arr.delete(arr.min)
puts arrdva.to_s+' '+arr.min.to_s