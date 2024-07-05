class QuestionsController < ApplicationController
  def create
    question_params[:questions].each do |question_param|
      Question.create(content: question_param[:content])
    end
    redirect_to questions_path, notice: 'Questions saved successfully!'
  end

  def index
    @questions = Question.all
  end

  private

  def question_params
    params.permit(questions: [:content])
  end
end