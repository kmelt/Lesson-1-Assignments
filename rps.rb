# get choice of P / R / S from user
# randomize computer's choice
# result
# ask user to play again

# ------------------------------------

CHOICES = {'R' => 'Rock', 'P' => 'Paper', 'S' => 'Scissors'}

def say(msg)
  puts "[[---- #{msg} ----]]"
end

def winning_msg (winning_choice)
  case winning_choice
  when 'R'
    "rock smashes scissors"
  when 'P'
    "paper covers rock"
  when 'S'
    "scissors shred paper"
  end
end

# ------------end methods ------------

say "I'm bored. Let's play Rock, Paper, Scissors!"

loop do
  
  # user choice
  begin
    say "Choose one: R, P, S"
    user_choice = gets.chomp.upcase
  end while !CHOICES.include?(user_choice)
  
  #pc choice
    pc_choice = CHOICES.keys.sample
      
    say "You've chosen #{CHOICES.fetch(user_choice)}, and I've chosen #{CHOICES.fetch(pc_choice)}."

  #comparing choices
  if pc_choice == user_choice
    say "It looks like there's a tie!"
  elsif (user_choice == 'R' && pc_choice == 'S') || (user_choice == 'P' && pc_choice == 'R') || (user_choice == 'S' && pc_choice == 'P')
    say "Looks like you're the winner; #{winning_msg(user_choice)}!"
  else
    say "Ha! Looks like I've won, since #{winning_msg(pc_choice)}!"
  end
  
  #rematch
  say "Would you like a rematch? (Y/N)"
    break if gets.chomp.upcase != "Y"

end