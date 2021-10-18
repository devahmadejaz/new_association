class AddResumeReferencesToSkillStools < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill_stools, :resume, null: false, foreign_key: true
  end
end
