class WorkoutsController < ApplicationController
 
  def index
    @workouts= Workout.all
    end

    def show
    @workout=Workout.find(params[:id])
    end


    def new
    @workout = current_user.workouts.new
    
    end



    def create
    @workout = current_user.workouts.create(workout_params)
    redirect_to workout_path(@workout)

    end


    def edit

    @workout = Workout.find(params[:id])

    end

    def update

    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
    redirect_to workout_path(@workout)

    end

    def destroy

    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_path

    end

    # Add methods 

    private

    def workout_params
    params.require(:workout).permit(:date,:name,:note,:muscles,:set,:rep,:weight,:img)
    end

end
