class Game

end
# This class handles the game loop, until there is a winner which will be defined by the scoreboard class

# --- relevant here ---
#> current_player
#> num1 and num2
#> question answer
#> answer correctness

#this class outputs the question, '---NEW TURN---', and Game Over! messages


# This class starts at 3/3 - 3/3, displayes the score after each round and decides a winner
# score is relevant here

# after turn change score

# this class ouputs the score only



class Player
#score here
end
# This class will promt the user input as well

#player is promted with their 'reaction' to their score.





class Question
  num1 = Random.rand(21)
  num2 = Random.rand(21)
  answer = num1 + num2
  question = "What does #{num1} plus #{num2} equal?"
  puts question
  puts "it makes #{answer}"
end

Question
