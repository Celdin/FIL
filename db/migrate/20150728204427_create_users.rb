class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :mail
	  t.string :password
	  
      t.timestamps
    end
  end
end
