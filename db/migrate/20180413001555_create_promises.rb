class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.references :project, foreign_key: true
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
