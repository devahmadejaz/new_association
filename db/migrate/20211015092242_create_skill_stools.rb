class CreateSkillStools < ActiveRecord::Migration[6.1]
  def change
    create_table :skill_stools do |t|
      t.string :name

      t.timestamps
    end
  end
end
