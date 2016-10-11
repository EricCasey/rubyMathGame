require 'byebug'
require_relative 'player'
require_relative 'questionGen'

@game_running = true
@turn = 0

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

while @game_running

  question = Question.new

  puts "----- NEW TURN -----"
  case @turn
  when 0
    print "Player 1: "
  else
    print "Player 2: "
  end

  print question.string_question
  @user_input = gets.chomp.to_i

  if @turn == 0 && question.answer_correct?(@user_input)
    puts "ANSWER: #{question.answer}"
    player1.gain_point
    @turn += 1
  elsif @turn == 0 && !question.answer_correct?(@user_input)
    puts "ANSWER: #{question.answer}"
    player1.lose_life
    @turn += 1
  elsif @turn == 1 && question.answer_correct?(@user_input)
    puts "ANSWER: #{question.answer}"
    player2.gain_point
    @turn -= 1
  elsif @turn == 1 && !question.answer_correct?(@user_input)
    puts "ANSWER: #{question.answer}"
    player2.lose_life
    @turn -= 1
  end

  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

  if player1.lives < 1 || player2.lives < 1
    if player1.lives < 1
      puts "The winner is #{player2.name} with #{player2.lives} lives left"
    elsif player2.lives < 1
      puts "The winner is #{player1.name} with #{player1.lives} lives left"
    end
    puts "----- GAME OVER -----"

    @game_running = false
  end

end
