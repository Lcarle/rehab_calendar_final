class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all

    render("exercises/index.html.erb")
  end

  def show
    @exercise = Exercise.find(params[:id])

    render("exercises/show.html.erb")
  end

  def new
    @exercise = Exercise.new

    render("exercises/new.html.erb")
  end

  def create
    @exercise = Exercise.new

    @exercise.image = params[:image]
    @exercise.description = params[:description]
    @exercise.name = params[:name]

    save_status = @exercise.save

    if save_status == true
      redirect_to("/exercises/#{@exercise.id}", :notice => "Exercise created successfully.")
    else
      render("exercises/new.html.erb")
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])

    render("exercises/edit.html.erb")
  end

  def update
    @exercise = Exercise.find(params[:id])

    @exercise.image = params[:image]
    @exercise.description = params[:description]
    @exercise.name = params[:name]

    save_status = @exercise.save

    if save_status == true
      redirect_to("/exercises/#{@exercise.id}", :notice => "Exercise updated successfully.")
    else
      render("exercises/edit.html.erb")
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])

    @exercise.destroy

    if URI(request.referer).path == "/exercises/#{@exercise.id}"
      redirect_to("/", :notice => "Exercise deleted.")
    else
      redirect_to(:back, :notice => "Exercise deleted.")
    end
  end
end
