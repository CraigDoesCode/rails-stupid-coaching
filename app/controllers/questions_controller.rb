class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params['question']
    @response = helpers.coach_answer_enhanced(@question) if @question
  end
end
