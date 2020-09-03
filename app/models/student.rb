class Student < ApplicationRecord
    has_many :tutoring_times
    has_many :coaches, through: :tutoring_times
end