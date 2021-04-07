class ChangesController < ApplicationController
    def index
        @changes = Change.all 
        render json: @changes
    end

    def show
        @change = Change.find(params[:id])
        render json: @change
    end

    def new
        @change = Change.new
        render json: @change
    end

    def edit
        @change = Change.find(params[:id])
        render json: @change
    end

    def create
        @change = Change.create(change_params)
        render json: @change
    end

    def update
        @change = Change.find(params[:id])
        @change.update(change_params)
        render json: @change
    end

    def destroy
        @change = Change.find(params[:id])
        @change.destroy
        render json: @change
    end

    private

    def change_params
        params.permit(:date, :transportation_id, :student_id)
    end
end
