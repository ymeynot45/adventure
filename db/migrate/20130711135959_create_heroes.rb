class CreateHeroes < ActiveRecord::Migration
  def change
  	create_table :heroes do |t|
  		t.string :name, null: false
  		t.string :location, null: false
  		t.datetime :end, default: nil
  		t.integer :hitpoints, default: 100
  		t.integer :rocks, default: 0
  		t.integer :paper, default: 0
  		t.integer :scissors, default: 0
  		t.timestamps
  	end
  end
end
