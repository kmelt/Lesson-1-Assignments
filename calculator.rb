def say(msg)
  puts "[[---- #{msg} ----]]"
end

def check_num
  num = gets.chomp
  while num.to_i == 0
    say "Please enter a valid number:"
    num = gets.chomp
  end
  num
end

def print_result(ans)
  say "Calculation complete!"
  say "The answer is #{ans}."
end

# [ ---------- end methods ---------- ]

say "Hello, I'm Calculatron. Let's calculate something together! ^_^"

say "What's your first number?"
num1 = check_num

say "What's the second number?"
num2 = check_num

begin
  say "Choose 1 - 4 to decide how we'll calculate them."
  say "1) add   2) subtract   3) multiply   4) divide"
  calc_choice = gets.to_i
end while !(1..4).include?(calc_choice)

case calc_choice
  when 1
    ans = num1.to_i + num2.to_i
    print_result(ans)
  when 2
    ans = num1.to_i - num2.to_i
    print_result(ans)
  when 3
    ans = num1.to_i * num2.to_i
    print_result(ans)
  when 4
    ans = num1.to_f / num2.to_f
    print_result(ans)
end