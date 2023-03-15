class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.text :description
      t.integer :user_id 

      t.timestamps
    end
  end
end
