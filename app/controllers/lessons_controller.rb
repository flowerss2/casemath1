class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all

    render("lessons/index.html.erb")
  end

  def show
    @lesson = Lesson.find(params[:id])
@newcomment = Comment.new
    render("lessons/show.html.erb")
  end

  def new
    @lesson = Lesson.new

    render("lessons/new.html.erb")
  end

  def create
    @lesson = Lesson.new

    @lesson.lesson_name = params[:lesson_name]
    @lesson.video_id = params[:video_id]
    @lesson.resources_id = params[:resources_id]

    save_status = @lesson.save

    if save_status == true
      redirect_to("/lessons/#{@lesson.id}", :notice => "Lesson created successfully.")
    else
      render("lessons/new.html.erb")
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])

    render("lessons/edit.html.erb")
  end

  def update
    @lesson = Lesson.find(params[:id])

    @lesson.lesson_name = params[:lesson_name]
    @lesson.video_id = params[:video_id]
    @lesson.resources_id = params[:resources_id]

    save_status = @lesson.save

    if save_status == true
      redirect_to("/lessons/#{@lesson.id}", :notice => "Lesson updated successfully.")
    else
      render("lessons/edit.html.erb")
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])

    @lesson.destroy

    if URI(request.referer).path == "/lessons/#{@lesson.id}"
      redirect_to("/", :notice => "Lesson deleted.")
    else
      redirect_to(:back, :notice => "Lesson deleted.")
    end
  end
end
