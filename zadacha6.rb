#Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.
arr = [1, 3, 5 , 4 , 3, 2, 8, 10, 4, 6, 7]
puts arr.map {|e| if e % 2 == 0 ;e=e+arr[-1]; else e; end}
