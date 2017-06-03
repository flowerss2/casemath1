class ResourcesController < ApplicationController
  def index
    @resources = Resource.all

    render("resources/index.html.erb")
  end

  def show
    @resource = Resource.find(params[:id])

    render("resources/show.html.erb")
  end

  def new
    @resource = Resource.new

    render("resources/new.html.erb")
  end

  def create
    @resource = Resource.new

    @resource.lesson_id = params[:lesson_id]
    @resource.description = params[:description]
    @resource.location = params[:location]
    @resource.embed_address = params[:embed_address]

    save_status = @resource.save

    if save_status == true
      redirect_to("/resources/#{@resource.id}", :notice => "Resource created successfully.")
    else
      render("resources/new.html.erb")
    end
  end

  def edit
    @resource = Resource.find(params[:id])

    render("resources/edit.html.erb")
  end

  def update
    @resource = Resource.find(params[:id])

    @resource.lesson_id = params[:lesson_id]
    @resource.description = params[:description]
    @resource.location = params[:location]
    @resource.embed_address = params[:embed_address]

    save_status = @resource.save

    if save_status == true
      redirect_to("/resources/#{@resource.id}", :notice => "Resource updated successfully.")
    else
      render("resources/edit.html.erb")
    end
  end

  def destroy
    @resource = Resource.find(params[:id])

    @resource.destroy

    if URI(request.referer).path == "/resources/#{@resource.id}"
      redirect_to("/", :notice => "Resource deleted.")
    else
      redirect_to(:back, :notice => "Resource deleted.")
    end
  end
end
