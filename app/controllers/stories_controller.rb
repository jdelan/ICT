class StoriesController < ApplicationController
  def index
    @stories = Story.all

    render("stories/index.html.erb")
  end

  def show
    @story = Story.find(params[:id])

    render("stories/show.html.erb")
  end

  def new
    @story = Story.new

    render("stories/new.html.erb")
  end

  def create
    @story = Story.new

    @story.company_id = params[:company_id]
    @story.article_id = params[:article_id]

    save_status = @story.save

    if save_status == true
      redirect_to("/stories/#{@story.id}", :notice => "Story created successfully.")
    else
      render("stories/new.html.erb")
    end
  end

  def edit
    @story = Story.find(params[:id])

    render("stories/edit.html.erb")
  end

  def update
    @story = Story.find(params[:id])

    @story.company_id = params[:company_id]
    @story.article_id = params[:article_id]

    save_status = @story.save

    if save_status == true
      redirect_to("/stories/#{@story.id}", :notice => "Story updated successfully.")
    else
      render("stories/edit.html.erb")
    end
  end

  def destroy
    @story = Story.find(params[:id])

    @story.destroy

    if URI(request.referer).path == "/stories/#{@story.id}"
      redirect_to("/", :notice => "Story deleted.")
    else
      redirect_to(:back, :notice => "Story deleted.")
    end
  end
end
