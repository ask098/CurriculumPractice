class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :industry
      t.text :description
      t.date :start_date
      t.boolean :actually
      t.date :end_date
           
    end
  end
end
