class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nick
      t.string :name
      t.string :lastname
      t.integer :phone
      t.text :description
      t.string :picture
      t.boolean :admin

      t.timestamps
    end
  end
end
