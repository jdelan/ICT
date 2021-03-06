class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    render("companies/index.html.erb")
  end

  def show
    @company = Company.find(params[:id])

    @street_address = @company.hq_address
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @street_address.gsub(" ","+")
    parsed_data = JSON.parse(open(url).read)
    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
    @street_address_clean = @street_address.gsub(" ","+")

    if Tracking.where({ user_id: current_user.id, company_id: @company.id }).first == nil then
      @liked == 0
    else
      @liked == 1
    end

    render("companies/show.html.erb")
  end

  def new
    @company = Company.new
    render("companies/new.html.erb")
  end

  def create
    @company = Company.new

    @company.name = params[:name]
    @company.description = params[:description]
    @company.tags = params[:tags]
    @company.hq_address = params[:hq_address]
    @company.active_business = params[:active_business]
    @company.user_id = params[:user_id]

    save_status = @company.save

    if save_status == true
      redirect_to("/companies/#{@company.id}", :notice => "Company created successfully.")
    else
      render("companies/new.html.erb")
    end
  end

  def edit
    @company = Company.find(params[:id])

    render("companies/edit.html.erb")
  end

  def update
    @company = Company.find(params[:id])

    @company.name = params[:name]
    @company.description = params[:description]
    @company.tags = params[:tags]
    @company.hq_address = params[:hq_address]
    @company.active_business = params[:active_business]
    @company.user_id = params[:user_id]

    save_status = @company.save

    if save_status == true
      redirect_to("/companies/#{@company.id}", :notice => "Company updated successfully.")
    else
      render("companies/edit.html.erb")
    end
  end

  def destroy
    @company = Company.find(params[:id])

    @company.destroy

    if URI(request.referer).path == "/companies/#{@company.id}"
      redirect_to("/", :notice => "Company deleted.")
    else
      redirect_to(:back, :notice => "Company deleted.")
    end
  end
end
