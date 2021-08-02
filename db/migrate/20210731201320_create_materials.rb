class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :description
      t.integer :price
      t.boolean :acquired
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
