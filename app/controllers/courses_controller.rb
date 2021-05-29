class CoursesController < ApplicationController

    before_action :set_course, only: %i[show edit update destroy]

    def index
        @courses = Course.all
    end

    def show
    end

    def new
        @course = Course.new
    end

    def edit
    end

    def create 
        @course = Course.create(course_params)
        redirect_to @course
    end

    def update
        @course.update(course_params)
        redirect_to @course, notice: 'Curso atualizado com sucesso!'
    end

    def destroy
        @course.destroy
        redirect_to courses_path, notice: 'Curso apagado com sucesso!'
    end

    private

    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
        params
            .require(:course)
            .permit(:name, :description, :code, :price, :enrollment_deadline)
    end

end