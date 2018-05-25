class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :picture
      t.string :video
      t.integer :goalamount
      t.timestamp :duedate
      t.timestamp :startdate
      t.text :markdown
      t.integer :category
      t.integer :views

      t.timestamps
    end
  end
end
