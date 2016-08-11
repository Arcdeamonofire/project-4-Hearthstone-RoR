class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.boolean :have_card, default:false
      t.string :character_class

      t.timestamps
    end
  end
end
