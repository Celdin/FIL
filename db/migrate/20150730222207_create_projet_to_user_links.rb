class CreateProjetToUserLinks < ActiveRecord::Migration
  def change
    create_table :projet_to_user_links do |t|
      t.integer :projet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
