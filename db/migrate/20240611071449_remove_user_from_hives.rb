class RemoveUserFromHives < ActiveRecord::Migration[7.1]
  def up
    remove_reference :hives, :user, null: false, foreign_key: true
  end

  def down
    add_reference :hives, :user, null: false, foreign_key: true 
  end
end
