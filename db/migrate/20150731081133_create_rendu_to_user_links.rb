class CreateRenduToUserLinks < ActiveRecord::Migration
  def change
    create_table :rendu_to_user_links do |t|
      t.integer :rendu_id
      t.integer :user_id

      t.timestamps
    end
  end
end
