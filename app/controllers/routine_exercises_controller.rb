class RoutineExercisesController < ApplicationController
  def index
    @routine_exercises = RoutineExercise.all

    render("routine_exercises/index.html.erb")
  end

  def show
    @routine_exercise = RoutineExercise.find(params[:id])

    render("routine_exercises/show.html.erb")
  end

  def new
    @routine_exercise = RoutineExercise.new

    render("routine_exercises/new.html.erb")
  end

  def create
    @routine_exercise = RoutineExercise.new

    @routine_exercise.exercise_id = params[:exercise_id]
    @routine_exercise.reps = params[:reps]
    @routine_exercise.sets = params[:sets]
    @routine_exercise.routine_id = params[:routine_id]
    @routine_exercise.name = params[:name]

    save_status = @routine_exercise.save

    if save_status == true
      redirect_to("/routine_exercises/#{@routine_exercise.id}", :notice => "Routine exercise created successfully.")
    else
      render("routine_exercises/new.html.erb")
    end
  end

  def edit
    @routine_exercise = RoutineExercise.find(params[:id])

    render("routine_exercises/edit.html.erb")
  end

  def update
    @routine_exercise = RoutineExercise.find(params[:id])

    @routine_exercise.exercise_id = params[:exercise_id]
    @routine_exercise.reps = params[:reps]
    @routine_exercise.sets = params[:sets]
    @routine_exercise.routine_id = params[:routine_id]
    @routine_exercise.name = params[:name]

    save_status = @routine_exercise.save

    if save_status == true
      redirect_to("/routine_exercises/#{@routine_exercise.id}", :notice => "Routine exercise updated successfully.")
    else
      render("routine_exercises/edit.html.erb")
    end
  end

  def destroy
    @routine_exercise = RoutineExercise.find(params[:id])

    @routine_exercise.destroy

    if URI(request.referer).path == "/routine_exercises/#{@routine_exercise.id}"
      redirect_to("/", :notice => "Routine exercise deleted.")
    else
      redirect_to(:back, :notice => "Routine exercise deleted.")
    end
  end
end
