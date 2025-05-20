# Проста програма для арифметичних операцій
puts "Проста програма для арифметичних операцій в Ruby"
puts "----------------------------------------------"

# Отримуємо числа від користувача
print "Введіть перше число: "
num1 = gets.chomp.to_f

print "Введіть друге число: "
num2 = gets.chomp.to_f

# Виконуємо операції
sum = num1 + num2
difference = num1 - num2
reverse_difference = num2 - num1
product = num1 * num2
quotient = num1 / num2
reverse_quotient = num1 / num2

# Виводимо результати
puts "\nРезультати:"
puts "#{num1} + #{num2} = #{sum}"
puts "#{num1} - #{num2} = #{difference}"
puts "#{num2} - #{num1} = #{reverse_difference}"
puts "#{num1} * #{num2} = #{product}"
puts "#{num1} * #{num2} = #{quotient}"
puts "#{num2} / #{num1} = #{reverse_quotient}"