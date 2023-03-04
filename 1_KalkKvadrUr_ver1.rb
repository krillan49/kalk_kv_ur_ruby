# Калькулятор квадратных уравнений. Версия 1 (январь.2022)

puts "Квадратное уравнение имеет вид: a*(x^2)+b*x+c=0"
puts "Введите коэфициент а: "
a = gets().chomp().to_f
puts "Введите коэфициент b: "
b = gets().chomp().to_f
puts "Введите коэфициент c: "
c = gets().chomp().to_f

d = b**2 - 4*a*c

# Перевод значений с float  в integer для вывода, если значения целые(Визуал)
# + задание зависимости скобок в выводе от float/integer и от отрицательности значения
per = [d, a, b, c]
for el in 0..per.length() - 1
  if per[el] == per[el].round() and per[el] == per[el].abs()
    per[el] = per[el].to_i
  elsif per[el] == per[el].round() and per[el] != per[el].abs()
    per[el] = per[el].to_i
    per[el] = "(" + per[el].to_s + ")"
  else
    per[el] = "(" + per[el].to_s + ")"
  end
end
puts ("Расчет дискриминанта: " + "D = " + per[2].to_s + "^2 - 4*" + per[1].to_s + "*" + per[3].to_s)


if d == d.round() # Перевод значений с float  в integer для вывода, если значения целые(Визуал)
  d = d.to_i
end
puts ("Дискриминант равен: " + d.to_s)

if d < 0
  puts ("Уравнение корней не имеет")
elsif d == 0
  x = (- b)/(2*a)
  puts ("Уравнение имеер один корень.")
  puts ("Расчет корня: " + "х = (-" + per[2].to_s + ")/(2*" + per[1].to_s + ")")

  if x == x.round() # Перевод значений с float  в integer для вывода, если значения целые(Визуал)
    x = x.to_i
  end

  puts ("Корень равен: " + x.to_s)
else
  x1 = (- b + Math.sqrt(d))/(2*a)
  x2 = (- b - Math.sqrt(d))/(2*a)
  puts ("Уравнение имеет два корня.")
  puts ("Расчет корней: x1; x2 = " + "((-" + per[2].to_s + ") +- √" + per[0].to_s + ")/(2*" + per[1].to_s + ")")

  if x1 == x1.round() # Перевод значений с float  в integer для вывода, если значения целые(Визуал)
    x1 = x1.to_i
  end
  if x2 == x2.round()
    x2 = x2.to_i
  end

  puts ("Первый корень равен: " + x1.to_s)
  puts ("Второй корень равен: " + x2.to_s)

end
