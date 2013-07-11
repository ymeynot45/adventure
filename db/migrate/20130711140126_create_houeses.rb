class CreateHoueses < ActiveRecord::Migration
  def change
  	create_table :houses do |t|
  		t.string :name, null: false
  		t.timestamps
  	end
  end
end
