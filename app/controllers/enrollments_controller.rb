class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all

    render("enrollments/index.html.erb")
  end

  def show
    @enrollment = Enrollment.find(params[:id])

    render("enrollments/show.html.erb")
  end

  def new
    @enrollment = Enrollment.new

    render("enrollments/new.html.erb")
  end

  def create
    @enrollment = Enrollment.new

    @enrollment.school_id = params[:school_id]
    @enrollment.user_id = params[:user_id]

    save_status = @enrollment.save

    if save_status == true
      redirect_to("/enrollments/#{@enrollment.id}", :notice => "Enrollment created successfully.")
    else
      render("enrollments/new.html.erb")
    end
  end

  def edit
    @enrollment = Enrollment.find(params[:id])

    render("enrollments/edit.html.erb")
  end

  def update
    @enrollment = Enrollment.find(params[:id])

    @enrollment.school_id = params[:school_id]
    @enrollment.user_id = params[:user_id]

    save_status = @enrollment.save

    if save_status == true
      redirect_to("/enrollments/#{@enrollment.id}", :notice => "Enrollment updated successfully.")
    else
      render("enrollments/edit.html.erb")
    end
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])

    @enrollment.destroy

    if URI(request.referer).path == "/enrollments/#{@enrollment.id}"
      redirect_to("/", :notice => "Enrollment deleted.")
    else
      redirect_to(:back, :notice => "Enrollment deleted.")
    end
  end
end
