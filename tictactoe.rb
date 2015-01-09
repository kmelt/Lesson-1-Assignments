require 'pry'

# draw a board

# player = X & comp = O

# loop until winner or all squares taken
	# player chooses empty square
	# check for winner
	# computer chooses another empty square
	# check for winner

# if there's a winner
	# show the winner
# or else
	# it's a tie


# ===> winner is clearly a global var


def initialize_board
	b = {}
	(1..9).each {|position| b[position] = ' '}
	b
end

def draw_board(b)
	system 'clear'
	puts "_#{b[1]}_|_#{b[2]}_|_#{b[3]}_"
	puts "_#{b[4]}_|_#{b[5]}_|_#{b[6]}_"
	puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def empty_positions(b)
	b.select {|k, v| v == ' '}.keys
end

def player_picks_square(b)
	puts "Pick a square (1 - 9):"
	position = gets.chomp.to_i
	b[position] = 'X'
end

def computer_picks_square(b)
	position = empty_positions(b).sample
	b[position] = 'O'
end

def check_winner(b)
	
end

board = initialize_board
draw_board(board)

begin
	player_picks_square(board)
	computer_picks_square(board)
	draw_board(board)
	winner = check_winner
end until winner || empty_positions(board).empty?