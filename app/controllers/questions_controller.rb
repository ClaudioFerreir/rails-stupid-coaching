class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @guru = 'Great!'
    elsif @question.end_with?('?')
      @guru = 'Silly question, get dressed and go to work!'
    else
      @guru = "I don't care, get dressed and go to work!"
    end
  end
end
