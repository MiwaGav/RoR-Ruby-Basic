#Дано число А и натуральное число N.
# Найти результат следующего выражения 1 + А + А*2 + А*3 + … + А*N.
a=25 
n=10
arr=(0..n).to_a.inject(0) {|sum,x| sum+ x }
puts 1+arr*a