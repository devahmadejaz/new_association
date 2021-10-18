class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_table :skill_stools, :skillstool
  end
end
