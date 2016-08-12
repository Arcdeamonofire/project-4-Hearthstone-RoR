class RenameCardsClassColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :cards, :class, :player_class
  end
end
