class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.all

    render("suggestions/index.html.erb")
  end

  def show
    @suggestion = Suggestion.find(params[:id])

    render("suggestions/show.html.erb")
  end

  def new
    @suggestion = Suggestion.new

    render("suggestions/new.html.erb")
  end

  def create
    @suggestion = Suggestion.new

    @suggestion.user_id = params[:user_id]
    @suggestion.lesson_id = params[:lesson_id]
    @suggestion.link_to_resource = params[:link_to_resource]
    @suggestion.reason_for_submitting = params[:reason_for_submitting]
    @suggestion.additional_comments = params[:additional_comments]

    save_status = @suggestion.save

    if save_status == true
      redirect_to("/lessons", :notice => "Suggestion created successfully.")
    else
      render("suggestions/new.html.erb")
    end
  end

  def edit
    @suggestion = Suggestion.find(params[:id])

    render("suggestions/edit.html.erb")
  end

  def update
    @suggestion = Suggestion.find(params[:id])

    @suggestion.user_id = params[:user_id]
    @suggestion.lesson_id = params[:lesson_id]
    @suggestion.link_to_resource = params[:link_to_resource]
    @suggestion.reason_for_submitting = params[:reason_for_submitting]
    @suggestion.additional_comments = params[:additional_comments]

    save_status = @suggestion.save

    if save_status == true
      redirect_to("/suggestions/#{@suggestion.id}", :notice => "Suggestion updated successfully.")
    else
      render("suggestions/edit.html.erb")
    end
  end

  def destroy
    @suggestion = Suggestion.find(params[:id])

    @suggestion.destroy

    if URI(request.referer).path == "/suggestions/#{@suggestion.id}"
      redirect_to("/", :notice => "Suggestion deleted.")
    else
      redirect_to(:back, :notice => "Suggestion deleted.")
    end
  end
end
