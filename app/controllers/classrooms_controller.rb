class ClassroomsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    #GET
    def index
       classroom = Classroom.all
       render json: classroom
    end
    def show
        classroom = Classroom.find(params[:id])

        render json: classroom
    end
    def create
        classroom = Classroom.create(classroom_params)
        render json: classroom, status: :created
    end

   #PATCH
   def update
       classroom = Classroom.find(params[:id])
       classroom_id.update(classroom_params)
       render json: classroom
   end

   #DELETE
   def destroy
       classroom = Classroom.find(params[:id])
       classroom.destroy
       head :no_content
   end

   private

   def classroom_params
       params.permit(:name, :school_id, :educator_id, student_id )
   end

   def render_not_found_response
       render json: {error: 'classroom not found'}, status: :not_found
    end
   
end
