class VideosController < ApplicationController
  def index
    @videos = Video.all

    render("videos/index.html.erb")
  end

  def show
    @video = Video.find(params[:id])

    render("videos/show.html.erb")
  end

  def new
    @video = Video.new

    render("videos/new.html.erb")
  end

  def create
    @video = Video.new

    @video.lesson_id = params[:lesson_id]
    @video.location = params[:location]
    @video.description = params[:description]
    @video.embed_address = params[:embed_address]

    save_status = @video.save

    if save_status == true
      redirect_to("/videos/#{@video.id}", :notice => "Video created successfully.")
    else
      render("videos/new.html.erb")
    end
  end

  def edit
    @video = Video.find(params[:id])

    render("videos/edit.html.erb")
  end

  def update
    @video = Video.find(params[:id])

    @video.lesson_id = params[:lesson_id]
    @video.location = params[:location]
    @video.description = params[:description]
    @video.embed_address = params[:embed_address]

    save_status = @video.save

    if save_status == true
      redirect_to("/videos/#{@video.id}", :notice => "Video updated successfully.")
    else
      render("videos/edit.html.erb")
    end
  end

  def destroy
    @video = Video.find(params[:id])

    @video.destroy

    if URI(request.referer).path == "/videos/#{@video.id}"
      redirect_to("/", :notice => "Video deleted.")
    else
      redirect_to(:back, :notice => "Video deleted.")
    end
  end
end
