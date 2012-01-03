class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :min_level
      t.integer :max_level
      t.integer :max_strength
      t.integer :max_magic
      t.string :bonus
      t.integer :base_exp
      t.integer :increment_exp
      t.integer :buy
      t.integer :sell

      t.timestamps
    end
  end
end
