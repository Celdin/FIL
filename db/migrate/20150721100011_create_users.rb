class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :mail
      t.references :projets, index: true

      t.timestamps
    end
  end
end
