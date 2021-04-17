class StudentsController < ApplicationController

    def index
        @students = Student.order(:name) 
        render json: @students
    end

    def show
        @student = Student.find(params[:id])
        render json: @student
    end

    def new
        @student = Student.new
        render json: @student
    end

    def edit
        @student = Student.find(params[:id])
        render json: @student
    end

    def create
        @student = Student.create(student_params)
        render json: @student
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        render json: @student
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        render json: @student
    end

    private

    def student_params
        params.permit(:name, :address, :guardian, :phone, :homeroom, :transportation_id )
    end
end
