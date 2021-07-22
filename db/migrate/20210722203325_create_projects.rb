class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :mock_up
      t.string :finsihed
      t.string :description
      t.boolean :in_progress
      t.boolean :completed
      t.boolean :private
      t.integer :start_date
      t.integer :end_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
