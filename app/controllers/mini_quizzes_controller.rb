class MiniQuizzesController < ApplicationController
  def index
    @mini_quizzes = MiniQuiz.all

    render("mini_quizzes/index.html.erb")
  end

  def show
    @mini_quiz = MiniQuiz.find(params[:id])

    render("mini_quizzes/show.html.erb")
  end

  def new
    @mini_quiz = MiniQuiz.new

    render("mini_quizzes/new.html.erb")
  end

  def create
    @mini_quiz = MiniQuiz.new

    @mini_quiz.lesson_id = params[:lesson_id]
    @mini_quiz.description = params[:description]
    @mini_quiz.location = params[:location]
    @mini_quiz.embed_address = params[:embed_address]

    save_status = @mini_quiz.save

    if save_status == true
      redirect_to("/mini_quizzes/#{@mini_quiz.id}", :notice => "Mini quiz created successfully.")
    else
      render("mini_quizzes/new.html.erb")
    end
  end

  def edit
    @mini_quiz = MiniQuiz.find(params[:id])

    render("mini_quizzes/edit.html.erb")
  end

  def update
    @mini_quiz = MiniQuiz.find(params[:id])

    @mini_quiz.lesson_id = params[:lesson_id]
    @mini_quiz.description = params[:description]
    @mini_quiz.location = params[:location]
    @mini_quiz.embed_address = params[:embed_address]

    save_status = @mini_quiz.save

    if save_status == true
      redirect_to("/mini_quizzes/#{@mini_quiz.id}", :notice => "Mini quiz updated successfully.")
    else
      render("mini_quizzes/edit.html.erb")
    end
  end

  def destroy
    @mini_quiz = MiniQuiz.find(params[:id])

    @mini_quiz.destroy

    if URI(request.referer).path == "/mini_quizzes/#{@mini_quiz.id}"
      redirect_to("/", :notice => "Mini quiz deleted.")
    else
      redirect_to(:back, :notice => "Mini quiz deleted.")
    end
  end
end
