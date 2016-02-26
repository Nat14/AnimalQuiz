class AnimalquestionController < ApplicationController
  def askquestion
    @first_question = "Is it an elephant?"
    if params.has_key?(:answer)
      q = Question.new
      q.ask = @first_question
      q.save
      if params[:answer] == 'y'
        redirect_to '/answer/show'
      elsif params[:answer] == 'n'
        redirect_to '/answer/showno'
      end
    end
  end
end
