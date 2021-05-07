class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  has_and_belongs_to_many :students
  validates :name, :school_year, presence: true
  validates :student_id, uniqueness: { scope: :school_year, message: 'Sorry! Should happen once per year.' }

end
