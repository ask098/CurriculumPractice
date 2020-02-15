class AddNameToExperien < ActiveRecord::Migration[5.2]
  def change
    rename_column :experiences, :use_id, :user_id
  end
end
