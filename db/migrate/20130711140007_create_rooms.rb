class CreateRooms < ActiveRecord::Migration
  def change
  	creat_table: rooms do |t|
  		t.string :name, null: false
  		t.boolean :monster, default: false
  		t.integer :outs, default: 0
  		t.text :description, default: "It's a kinda bland room."
  		t.timestamps
  	end
  end
end
