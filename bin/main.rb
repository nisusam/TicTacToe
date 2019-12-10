#!/usr/bin/env ruby

# Array of valid positions that a player can take
valid_options = %w[1 2 3 4 5 6 7 8 9]
selected_positions = []
game_won = false
board = 1
while board < 9
  loop do
    puts 'Player X select a number from 1 to 9' # prompts player X to pick a position
    option_selected = gets.chomp # player X enters his/her input
    break if valid_options.include?(option_selected) && !selected_positions.include?(option_selected)
    # we check to see if the input supplied is among the valid options
    # If it isn't, we continue with the loop
  end

  puts "The board has now been updated, player X played at position #{option_selected}"

  # update the selected positions array with the option selected
  selected_positions.push(option_selected)

  # display the updated board
  puts 'The board is displayed'

  # We check to see if player x has won
  # game_won will return true if we have a winner, ending the game
  return puts "Player X has won the game" if game_won
  return puts "The game has ended in draw" if board == 9
  board += 1

  loop do
    puts 'Player O select a number from 1 to 9' # prompts player X to pick a position
    option_selected = gets.chomp # player X enters his/her input
    break if valid_options.include?(option_selected) && !selected_positions.include?(option_selected)
    # we check to see if the input supplied is among the valid options
    # If it isn't, we continue with the loop
  end

  puts "The board has now been updated, player O played at position #{option_selected}"

  # update the selected positions array with the option selected
  selected_positions.push(option_selected)

  # display the updated board
  puts 'The board is displayed'

  # We check to see if player x has won
  # game_won will return true if we have a winner, ending the game
  return puts "Player O has won the game" if game_won
  board += 1

end





























# # print the 
# valid_options[option_selected] = "X"
# puts "#{valid_options[0]} | #{valid_options[1]} | #{valid_options[2]}"
# puts "---------"
# puts "#{valid_options[3]} | #{valid_options[4]} | #{valid_options[5]}"
# puts "---------"
# puts "#{valid_options[6]} | #{valid_options[7]} | #{valid_options[8]}"
