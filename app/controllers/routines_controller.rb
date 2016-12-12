class RoutinesController < ApplicationController
  def index
    @routines = Routine.all

    render("routines/index.html.erb")
  end

  def show
    @routine = Routine.find(params[:id])

    render("routines/show.html.erb")
  end

  def new
    @routine = Routine.new

    render("routines/new.html.erb")
  end

  def create
    @routine = Routine.new

    @routine.diagnosis_id = params[:diagnosis_id]
    @routine.week = params[:week]

    save_status = @routine.save

    if save_status == true
      redirect_to("/routines/#{@routine.id}", :notice => "Routine created successfully.")
    else
      render("routines/new.html.erb")
    end
  end

  def edit
    @routine = Routine.find(params[:id])

    render("routines/edit.html.erb")
  end

  def update
    @routine = Routine.find(params[:id])

    @routine.diagnosis_id = params[:diagnosis_id]
    @routine.week = params[:week]

    save_status = @routine.save

    if save_status == true
      redirect_to("/routines/#{@routine.id}", :notice => "Routine updated successfully.")
    else
      render("routines/edit.html.erb")
    end
  end

  def destroy
    @routine = Routine.find(params[:id])

    @routine.destroy

    if URI(request.referer).path == "/routines/#{@routine.id}"
      redirect_to("/", :notice => "Routine deleted.")
    else
      redirect_to(:back, :notice => "Routine deleted.")
    end
  end
end
