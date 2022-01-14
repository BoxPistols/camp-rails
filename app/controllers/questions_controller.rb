class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def edit
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(questions_params)
    if @question.save
      redirect_to root_path, notice: "Success!"
    else
      flash[:alert] = "Save Error"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(questions_params)
      # byebug
      redirect_to root_path, notice: "Success!"
    else
      flash[:alert] = "Save Error"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path, notice: "Success!"
  end

  private
    def questions_params
      # byebug
      params.require(:question).permit(:name, :title, :content)
    end

end
