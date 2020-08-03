class QuestionsController < ApplicationController
  def ask
    @question
  end

  def answer
    @answer = coachanswer(params[:question])
  end

  private

  def coachanswer(question)
    if question == "I am going to work"
      return "Great!"
    elsif question.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
