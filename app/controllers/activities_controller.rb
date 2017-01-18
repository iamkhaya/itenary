class ActivitiesController < ApplicationController
    def new; end

    def create
        @activity = Activity.new(params[:activity])

        @activity.save
        redirect_to @activity
    end
end
