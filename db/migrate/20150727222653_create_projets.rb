class CreateProjets < ActiveRecord::Migration
  def change
    create_table :projets do |t|
      t.text :description
      t.string :sujet
      t.date :date_rendu
      t.integer :users

      t.timestamps
    end
  end
end
