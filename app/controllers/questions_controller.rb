class QuestionsController < ApplicationController
  def ask
    # showthe form
  end

  def answer
    @user_question = params[:question]
    @coach_answer = " "

    if @user_question === 'I am going to work'
      @coach_answer = "Great!"
    elsif @user_question.end_with?("?")
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer= 'I don't care, get dressed and go to work!'
    end
  end
end
