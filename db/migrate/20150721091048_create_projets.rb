class CreateProjets < ActiveRecord::Migration
  def change
    create_table :projets do |t|
      t.string :sujet
      t.text :description

      t.timestamps
    end
  end
end
