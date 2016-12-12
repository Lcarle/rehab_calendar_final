class InjuriesController < ApplicationController


  def index
    @injuries = Injury.all

    render("injuries/index.html.erb")
  end

  def show
    @injury = Injury.find(params[:id])

    render("injuries/show.html.erb")
  end

  def new
    @injury = Injury.new

    render("injuries/new.html.erb")
  end

  def create
    @injury = Injury.new

    @injury.user_id = params[:user_id]
    @injury.diagnosis_id = params[:diagnosis_id]
    @injury.injury_date = Chronic.parse(params[:injury_date])
    @injury.begin_rehab_on = Chronic.parse(params[:begin_rehab_on])

    save_status = @injury.save

    if save_status == true
      redirect_to("/injuries/#{@injury.id}", :notice => "Injury created successfully.")
    else
      render("injuries/new.html.erb")
    end
  end

  def edit
    @injury = Injury.find(params[:id])

    render("injuries/edit.html.erb")
  end

  def update
    @injury = Injury.find(params[:id])

    @injury.user_id = params[:user_id]
    @injury.diagnosis_id = params[:diagnosis_id]
    @injury.injury_date = params[:injury_date]
    @injury.begin_rehab_on = params[:begin_rehab_on]

    save_status = @injury.save

    if save_status == true
      redirect_to("/injuries/#{@injury.id}", :notice => "Injury updated successfully.")
    else
      render("injuries/edit.html.erb")
    end
  end

  def destroy
    @injury = Injury.find(params[:id])

    @injury.destroy

    if URI(request.referer).path == "/injuries/#{@injury.id}"
      redirect_to("/", :notice => "Injury deleted.")
    else
      redirect_to(:back, :notice => "Injury deleted.")
    end
  end
end
