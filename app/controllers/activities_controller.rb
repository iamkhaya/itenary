class ActivitiesController < ApplicationController
  def index
    @activities = Activity.paginate(page: params[:page], per_page: 5).order('id Desc').all
  end

  def show
      @activities = Activity.paginate(page: params[:page], per_page: 5).order('id Desc').all
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def new; end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    redirect_to action: 'index'
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.save
    redirect_to action: 'index'
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :category, :description)
  end
end
