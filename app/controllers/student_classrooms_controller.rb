class StudentClassroomsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    #GET
    def index
       student_classroom = StudentClassroom.all
       render json: student_classroom
    end
    def show
        student_classroom = StudentClassroom.find(params[:id])

        render json: student_classroom
    end
    def create
        student_classroom = StudentClassroom.create(student_classroom_params)
        render json: student_classroom, status: :created
    end

   #PATCH
   def update
       student_classroom = StudentClassroom.find(params[:id])
       student_classroom.update(student_classroom_params)
       render json: student_classroom
   end

   #DELETE
   def destroy
       student_classroom = StudentClassroom.find(params[:id])
       student_classroom.destroy
       head :no_content
   end

   private

   def student_classroom_params
       params.permit(:name, :school_id, :educator_id, student_id )
   end

   def render_not_found_response
       render json: {error: 'student_classroom not found'}, status: :not_found
    end
end
