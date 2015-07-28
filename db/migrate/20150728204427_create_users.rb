class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :mail
      t.integer :projets
      t.integer :rendus

      t.timestamps
    end
  end
end
