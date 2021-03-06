class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :in_progress, default: true
      t.boolean :completed, default: false
      t.string :start_date
      t.string :end_date
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
