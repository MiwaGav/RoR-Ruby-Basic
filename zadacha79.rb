#Дан целочисленный массив. 
#Возвести в квадрат отрицательные элементы и в третью степень - положительные. 
#Нулевые элементы - не изменять.

arr = [1, 3, -5 , 4 , 3, 2, 8, -10, 4, 6, 7]
puts arr.map {|e| if e < 0 ;e=e**2; elsif e>0; e=e**3;else e ; end}
