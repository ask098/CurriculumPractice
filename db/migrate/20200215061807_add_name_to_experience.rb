class AddNameToExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :profile_id, :integer
    add_column :experiences, :use_id, :integer
    
  end
end
