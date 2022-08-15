class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @coach_answer = ''
    @user_answer = params[:answer]
    if @user_answer.include?("?")
      @coach_answer = 'silly question, get dressed and go to work!'
    elsif @user_answer == 'I am going to work right now!'
      @coach_answer = 'great!'
    else
      @coach_answer = 'I dont care, get dressed and go to work!'
    end
  end
end
