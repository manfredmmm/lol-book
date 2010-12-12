class CreatePlays < ActiveRecord::Migration
  def self.up
    create_table :plays do |t|
      t.integer :user_id
      t.integer :champion_id
      t.integer :kills
      t.integer :deaths
      t.integer :assists

      t.timestamps
    end
  end

  def self.down
    drop_table :plays
  end
end
