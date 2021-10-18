class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :from_date
      t.string :to_date
      t.string :institute
      t.string :degree_title

      t.timestamps
    end
  end
end
