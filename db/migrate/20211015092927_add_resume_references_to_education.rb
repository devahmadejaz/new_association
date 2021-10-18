class AddResumeReferencesToEducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :educations, :resume, null: false, foreign_key: true
  end
end
