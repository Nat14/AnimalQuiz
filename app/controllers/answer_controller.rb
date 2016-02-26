class AnswerController < ApplicationController
  def showno
    if params.has_key?(:answeranimal)
      last_question = Question.last
      a = Animal.new
      a.name = params[:answeranimal]
      a.save
      match_a_and_q = AskAnimalQuestion.new
      match_a_and_q.yesorno = false
      match_a_and_q.question_id = last_question.id
      match_a_and_q.animal_id = a.id
      match_a_and_q.save
    end
  end
end
