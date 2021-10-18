class AddResumeReferencesToExperience < ActiveRecord::Migration[6.1]
  def change
    add_reference :experiences, :resume, null: false, foreign_key: true
  end
end
