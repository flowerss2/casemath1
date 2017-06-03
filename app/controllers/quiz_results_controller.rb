class QuizResultsController < ApplicationController
  def index
    @quiz_results = QuizResult.all

    render("quiz_results/index.html.erb")
  end

  def show
    @quiz_result = QuizResult.find(params[:id])

    render("quiz_results/show.html.erb")
  end

  def new
    @quiz_result = QuizResult.new

    render("quiz_results/new.html.erb")
  end

  def create
    @quiz_result = QuizResult.new

    @quiz_result.user_id = params[:user_id]
    @quiz_result.quiz_id = params[:quiz_id]
    @quiz_result.score = params[:score]

    save_status = @quiz_result.save

    if save_status == true
      redirect_to("/quiz_results/#{@quiz_result.id}", :notice => "Quiz result created successfully.")
    else
      render("quiz_results/new.html.erb")
    end
  end

  def edit
    @quiz_result = QuizResult.find(params[:id])

    render("quiz_results/edit.html.erb")
  end

  def update
    @quiz_result = QuizResult.find(params[:id])

    @quiz_result.user_id = params[:user_id]
    @quiz_result.quiz_id = params[:quiz_id]
    @quiz_result.score = params[:score]

    save_status = @quiz_result.save

    if save_status == true
      redirect_to("/quiz_results/#{@quiz_result.id}", :notice => "Quiz result updated successfully.")
    else
      render("quiz_results/edit.html.erb")
    end
  end

  def destroy
    @quiz_result = QuizResult.find(params[:id])

    @quiz_result.destroy

    if URI(request.referer).path == "/quiz_results/#{@quiz_result.id}"
      redirect_to("/", :notice => "Quiz result deleted.")
    else
      redirect_to(:back, :notice => "Quiz result deleted.")
    end
  end
end
