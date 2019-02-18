class QuestionsController < ApplicationController
  def ask; end

  def answer
    @input = params[:question]
    if @input.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @input.include?('I am going to work')
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
