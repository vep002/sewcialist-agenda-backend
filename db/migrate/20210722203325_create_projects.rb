class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :mock_up
      t.string :finished
      t.string :description
      t.boolean :in_progress, default: true
      t.boolean :completed, default: false
      t.boolean :private, default: false
      t.string :start_date
      t.string :end_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
