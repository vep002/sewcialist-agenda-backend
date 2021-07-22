class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :in_progress
      t.boolean :completed
      t.integer :start_date
      t.integer :end_date
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
