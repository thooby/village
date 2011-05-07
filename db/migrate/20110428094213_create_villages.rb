class CreateVillages < ActiveRecord::Migration
  def self.up
    create_table :villages do |t|
      t.string :name
      t.integer :commune_id

      t.timestamps
    end
  end

  def self.down
    drop_table :villages
  end
end
