class ModificationsController < ApplicationController
    def index
        @modifications = Modification.order(:date)
        render json: @modifications
    end

    def show
        @modification = Modification.find(params[:id])
        render json: @modification
    end

    def new
        @modification = Modification.new
        render json: @modification
    end

    def edit
        @modification = Modification.find(params[:id])
        render json: @modification
    end

    def create
        @modification = Modification.create(modification_params)
        render json: @modification
    end

    def update
        @modification = Modification.find(params[:id])
        @modification.update(modification_params)
        render json: @modification
    end

    def destroy
        @modification = Modification.find(params[:id])
        @modification.destroy
        render json: @modification
    end

    private

    def modification_params
        params.permit(:date, :transportation_id, :student_id, :user_id)
    end
end
