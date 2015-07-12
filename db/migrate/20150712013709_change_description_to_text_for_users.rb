class ChangeDescriptionToTextForUsers < ActiveRecord::Migration
  def change
      change_table :quests do |t|
        t.change :description, :text
      end
  end
end
