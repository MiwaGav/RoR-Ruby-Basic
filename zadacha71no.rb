#Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.
arr = [1, -3, 5 , -4 , 8, 2, 8, -10, 4, -6, 7]
puts arr.delete_if{|e| e==(arr.uniq.each)}
puts arr