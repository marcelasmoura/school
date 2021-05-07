class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :name
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.integer :school_year

      t.timestamps
    end
  end
end
