class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    your_message = your_message.downcase
    case
    when your_message == "i am going to work"
      return "Great"
    when your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    case
    when your_message == "I AM GOING TO WORK"
      return "Great!"
    when your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message.downcase)}"
    else
      return coach_answer(your_message)
    end
  end
end
