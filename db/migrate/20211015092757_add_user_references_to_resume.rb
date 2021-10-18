class AddUserReferencesToResume < ActiveRecord::Migration[6.1]
  def change
    add_reference :resumes, :user, null: false, foreign_key: true
  end
end
