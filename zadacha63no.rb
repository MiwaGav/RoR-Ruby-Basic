#Дан целочисленный массив. 
#Найти максимальное количество подряд идущих минимальных элементов.
arr=[1,3,4,5,7,1,1,1,1,3,5,6,8]
arr.count{|e, i| e==arr.min && e[i]==e[i+1] }