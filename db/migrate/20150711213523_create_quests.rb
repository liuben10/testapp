class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
