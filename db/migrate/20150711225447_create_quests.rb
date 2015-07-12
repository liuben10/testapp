class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.references :user, index: true

      t.timestamps
    end
  end
end
