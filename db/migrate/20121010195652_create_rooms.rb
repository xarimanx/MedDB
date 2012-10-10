class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :subdivision
      t.integer :number
      t.timestamps
    end
  end
end
