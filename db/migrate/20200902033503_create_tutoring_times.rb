class CreateTutoringTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :tutoring_times do |t|
      t.datetime :appointment_time
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
