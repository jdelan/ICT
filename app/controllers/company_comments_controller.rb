class CompanyCommentsController < ApplicationController
  def index
    @company_comments = CompanyComment.all

    render("company_comments/index.html.erb")
  end

  def show
    @company_comment = CompanyComment.find(params[:id])

    render("company_comments/show.html.erb")
  end

  def new
    @company_comment = CompanyComment.new

    render("company_comments/new.html.erb")
  end

  def create
    @company_comment = CompanyComment.new

    @company_comment.comment = params[:comment]
    @company_comment.company_id = params[:company_id]
    @company_comment.user_id = params[:user_id]

    save_status = @company_comment.save

    if save_status == true
      redirect_to("/company_comments/#{@company_comment.id}", :notice => "Company comment created successfully.")
    else
      render("company_comments/new.html.erb")
    end
  end

  def edit
    @company_comment = CompanyComment.find(params[:id])

    render("company_comments/edit.html.erb")
  end

  def update
    @company_comment = CompanyComment.find(params[:id])

    @company_comment.comment = params[:comment]
    @company_comment.company_id = params[:company_id]
    @company_comment.user_id = params[:user_id]

    save_status = @company_comment.save

    if save_status == true
      redirect_to("/company_comments/#{@company_comment.id}", :notice => "Company comment updated successfully.")
    else
      render("company_comments/edit.html.erb")
    end
  end

  def destroy
    @company_comment = CompanyComment.find(params[:id])

    @company_comment.destroy

    if URI(request.referer).path == "/company_comments/#{@company_comment.id}"
      redirect_to("/", :notice => "Company comment deleted.")
    else
      redirect_to(:back, :notice => "Company comment deleted.")
    end
  end
end
