class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :update, :destroy]

  # GET /quizzes
  def index
    @quizzes = Quiz.all

    render json: @quizzes.to_json(:include => {:questions => {:include => :answers}})

    # render json: @quizzes
  end

  # GET /quizzes/1
  def show
    render json: @quiz.to_json(:include => {:questions => {:include => :answers}})

    # quiz_questions = @quiz.questions
    # render json: {quiz: @quiz, questions: quiz_questions}

    # render json: @quiz
  end

  # POST /quizzes
  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      render json: @quiz, status: :created, location: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      render json: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_params
      params.require(:quiz).permit(:title, :description, :img_url)
    end
end
