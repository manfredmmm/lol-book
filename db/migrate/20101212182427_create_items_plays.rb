class CreateItemsPlays < ActiveRecord::Migration
  def self.up
    create_table :items_plays, :id => false do |t|
      t.integer :item_id
      t.integer :play_id
    end
  end

  def self.down
    drop_table :items_plays
  end
end
