class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render("articles/index.html.erb")
  end

  def show
    @article = Article.find(params[:id])

    render("articles/show.html.erb")
  end

  def new
    @article = Article.new

    render("articles/new.html.erb")
  end

  def create
    @article = Article.new

    @article.url = params[:url]
    @article.tag = params[:tag]
    @article.title = params[:title]
    @article.company_id = params[:company_id]
    @article.date = params[:date]
    @article.user_id = params[:user_id]

    save_status = @article.save

    @story = Story.new

    @story.company_id = params[:company_id]
    @story.article_id = @article.id

    save_status = @story.save



    if save_status == true
      redirect_to("/articles/#{@article.id}", :notice => "Article created successfully.")
    else
      render("articles/new.html.erb")
    end
  end

  def edit
    @article = Article.find(params[:id])

    render("articles/edit.html.erb")
  end

  def update
    @article = Article.find(params[:id])

    @article.url = params[:url]
    @article.tag = params[:tag]
    @article.title = params[:title]
    @article.company_id = params[:company_id]
    @article.date = params[:date]
    @article.user_id = params[:user_id]

    save_status = @article.save

    if save_status == true
      redirect_to("/articles/#{@article.id}", :notice => "Article updated successfully.")
    else
      render("articles/edit.html.erb")
    end
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    if URI(request.referer).path == "/articles/#{@article.id}"
      redirect_to("/", :notice => "Article deleted.")
    else
      redirect_to(:back, :notice => "Article deleted.")
    end
  end
end
