class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :experience_years

      t.timestamps
    end
  end
end
