class CreateRendus < ActiveRecord::Migration
  def change
    create_table :rendus do |t|
      t.integer :note
      t.integer :projet_id
	  t.integer :data_file_id
	  
      t.timestamps
    end
  end
end
