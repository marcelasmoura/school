class AddStudentsAtGradesController < ApplicationController
	def new

		@students = Student.all
		render '/add_students/add_student'
	end

	def create
		grade = Grade.find(params[:grade_id])
		student = Student.find(params[:student_id])
		grade.students << student
		redirect_to grade_path(grade)
	end
end
