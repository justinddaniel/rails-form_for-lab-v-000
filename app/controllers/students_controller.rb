class StudentsController < ApplicationController
  def index
		@student = Student.all
	end

	def show
	@student = Student.find(params[:id])
	end

	def new
	@student = Student.new
	end

	def create
	 @student = Student.new
	 @student.title = params[:title]
	 @student.room_number = params[:room_number]
	 @student.save
	  redirect_to school_class_path(@schoolclass)
	end

	def edit
		@schoolclass = SchoolClass.find(params[:id])
	end

	def update
	  @schoolclass = SchoolClass.find(params[:id])
	  @schoolclass.update(params.require(:schoolclass))
	  redirect_to school_class_path(@schoolclass)
	end
end
