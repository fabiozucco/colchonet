class AddUserIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :user, index: true
  end
end
