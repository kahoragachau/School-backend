# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#users
# User.create(username: "John doe",  role:"owner")
# User.create(username: "sam erics",  role:"student")


# owners

# Owner.create(name:"John doe", user_id:"1", school_id:"1")

#students
# Student.create(name: "sam erics", school_id:"1", user_id: "1")


# #schools
# School.create(name: "Moringa", owner_id: "1")

# #classrooms

# Classroom.create(name:"vipers", school_id: "1", educator_id: "1", student_id:"1")

#educators
# Educator.create(name:"Alex sanchez", school_id: "1")

# #student_attendance
StudentAttendance.create(student_id:"1",  classroom_id: "1",  school_id: "1", attendance: "present")

# # #student_classroom
# StudentClassroom.create(student_id: "1", classroom_id: "1", school_id: "1")
