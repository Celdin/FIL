class CreateRendus < ActiveRecord::Migration
  def change
    create_table :rendus do |t|
      t.integer :note

      t.timestamps
    end
  end
end
