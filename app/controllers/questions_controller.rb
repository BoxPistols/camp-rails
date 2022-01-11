class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
