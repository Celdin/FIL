class CreateRendus < ActiveRecord::Migration
  def change
    create_table :rendus do |t|
      t.integer :note
      t.integer :users
      t.integer :projet

      t.timestamps
    end
  end
end
