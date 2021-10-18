class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :title
      t.string :description
      t.string :released_date

      t.timestamps
    end
  end
end
