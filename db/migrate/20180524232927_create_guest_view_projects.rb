class CreateGuestViewProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_view_projects do |t|
      t.references :guest, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
