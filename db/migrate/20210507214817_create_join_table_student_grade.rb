class CreateJoinTableStudentGrade < ActiveRecord::Migration[6.0]
  def change
    create_join_table :students, :grades do |t|
      # t.index [:student_id, :grade_id]
      # t.index [:grade_id, :student_id]
    end
  end
end
