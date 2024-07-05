class QuestionsController < ApplicationController
  def submit
    @answers = params[:answers]
    session[:answers] = @answers

    @answers.each do |question_id, answer_content|
      Answer.create(content: answer_content, question_id: question_id)
    end

    redirect_to show_questions_path
  end

  def show
    @answers = session[:answers] || {}

    if @answers.present?
      @saved_answers = Answer.includes(:question).where(question_id: @answers.keys)
    else
      @saved_answers = Answer.includes(:question).all
    end
  end

  private

  def question_params
    params.require(:question).permit(questions: [:content])
  end

  def index
    @questions = Question.all
  end
  
end