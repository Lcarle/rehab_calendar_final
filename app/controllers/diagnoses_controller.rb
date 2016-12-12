class DiagnosesController < ApplicationController
  def index
    @diagnoses = Diagnosis.all

    render("diagnoses/index.html.erb")
  end

  def show
    @diagnosis = Diagnosis.find(params[:id])

    render("diagnoses/show.html.erb")
  end

  def new
    @diagnosis = Diagnosis.new

    render("diagnoses/new.html.erb")
  end

  def create
    @diagnosis = Diagnosis.new

    @diagnosis.name = params[:name]

    save_status = @diagnosis.save

    if save_status == true
      redirect_to("/diagnoses/#{@diagnosis.id}", :notice => "Diagnosis created successfully.")
    else
      render("diagnoses/new.html.erb")
    end
  end

  def edit
    @diagnosis = Diagnosis.find(params[:id])

    render("diagnoses/edit.html.erb")
  end

  def update
    @diagnosis = Diagnosis.find(params[:id])

    @diagnosis.name = params[:name]

    save_status = @diagnosis.save

    if save_status == true
      redirect_to("/diagnoses/#{@diagnosis.id}", :notice => "Diagnosis updated successfully.")
    else
      render("diagnoses/edit.html.erb")
    end
  end

  def destroy
    @diagnosis = Diagnosis.find(params[:id])

    @diagnosis.destroy

    if URI(request.referer).path == "/diagnoses/#{@diagnosis.id}"
      redirect_to("/", :notice => "Diagnosis deleted.")
    else
      redirect_to(:back, :notice => "Diagnosis deleted.")
    end
  end
end
