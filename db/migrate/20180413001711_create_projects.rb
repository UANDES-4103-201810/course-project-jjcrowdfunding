class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :mainpicture
      t.string :video_url
      t.text :description
      t.string :tittle
      t.integer :goal_amount
      t.timestamp :postdate
      t.timestamp :duedate
      t.string :mark_down
      t.integer :views
      t.boolean :outstanding_value
      t.integer :category

      t.timestamps
    end
  end
end
