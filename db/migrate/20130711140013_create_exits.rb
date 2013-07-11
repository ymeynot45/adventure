class CreateExits < ActiveRecord::Migration
  def change
  	create_table :exits do |t|
  		t.string :direction
  		t.string :type
  	end
  end
end
