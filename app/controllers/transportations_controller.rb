class TransportationsController < ApplicationController

    def index
        @transportations = Transportation.all
        render json: @transportations
    end

    def show
        @transportation = Transportation.find(params[:id])
        render json: @transportation
    end

    def new
        @transportation = Transportation.new
        render json: @transportation
    end

    def edit
        @transportation = Transportation.find(params[:id])
        render json: @transportation
    end

    def create
        @transportation = Transportation.create(transportation_params)
        render json: @transportation
    end

    def update
        @transportation = Transportation.find(params[:id])
        @transportation.update(transportation_params)
        render json: @transportation
    end

    def destroy
        @transportation = Transportation.find(params[:id])
        @transportation.destroy
        render json: @transportation
    end

    private

    def transportation_params
        params.permit(:name)
    end
end
