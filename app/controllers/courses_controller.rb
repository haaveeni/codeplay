class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @courses = Course.new(params.require(:course).permit(:name, :description, :code, :price, :enrollment_deadline))
        @courses.save
    end

end