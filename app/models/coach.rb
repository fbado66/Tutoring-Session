class Coach < ApplicationRecord
    has_many :tutoring_times
    has_many :students, through: :tutoring_times
end
