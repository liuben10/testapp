class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.integer :rating
      t.string :bio

      t.timestamps
    end
  end
end
