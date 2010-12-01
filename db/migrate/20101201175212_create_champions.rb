class CreateChampions < ActiveRecord::Migration
  def self.up
    create_table :champions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :champions
  end
end
