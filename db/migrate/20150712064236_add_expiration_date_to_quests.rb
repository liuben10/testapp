class AddExpirationDateToQuests < ActiveRecord::Migration
  def change
    add_column :quests, :expiration_date, :datetime
  end
end
