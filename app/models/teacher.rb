class Teacher < ApplicationRecord
	validates :name, :subject, presence: true
end
