class CreateMonsters < ActiveRecord::Migration
  def change
  	create_table :monsters do |t|
  		t.string :name
  		t.string :type
  		t.integer :hitpoints, default: 20
  		t.integer :number_of_moves, default: 1
  		t.timestamps
  	end
  end
end
