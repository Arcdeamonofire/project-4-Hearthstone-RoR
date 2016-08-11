class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.references :deck, foreign_key: true
      t.string :name
      t.string :type
      t.string :cost
      t.integer :attack
      t.integer :health
      t.integer :durability
      t.string :description
      t.string :flavor
      t.string :img
      t.string :class

      t.boolean :in_deck, default:false
      t.timestamps
    end
  end
end
