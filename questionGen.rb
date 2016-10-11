class Question
  attr_reader(:answer)

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def string_question
    "What is #{@num1} plus #{@num2}? "
  end

  def answer_correct?(ans_input)
    if ans_input == @answer
      return true
    else
      return false
    end
  end

end
