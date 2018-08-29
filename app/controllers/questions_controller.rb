class QuestionsController < ApplicationController

  def create
    Question.create(questions_params)

    redirect_to root_path
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def questions_params
    params.require(:question).permit(:email, :body)
  end
end
