class StudentsController < ApplicationController

    def index #
        students = Student.all #
        render json: students
    end

    def grades
        grades = Student.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        grade = Student.maximum(:grade)
        students = Student.find_by(grade: grade)
        render json:students
    end
end
