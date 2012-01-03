class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :buy
      t.integer :sell
      t.string :store
      t.integer :exp
      t.integer :multiplier

      t.timestamps
    end
  end
end
