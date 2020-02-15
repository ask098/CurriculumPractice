class AddNameToExp < ActiveRecord::Migration[5.2]
  def change
    change_column :experiences, :profile_id, :integer
    add_column :experiences, :use_id, :integer
  end
end
