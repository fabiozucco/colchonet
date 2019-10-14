class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :invoke
      t.string :active_record

      t.timestamps
    end
  end
end
