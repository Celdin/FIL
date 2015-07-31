class CreateRendus < ActiveRecord::Migration
  def change
    create_table :rendus do |t|
      t.integer :note
      t.integer :projet_id
	  t.string :data_file_path
	  
      t.timestamps
    end
  end
end
