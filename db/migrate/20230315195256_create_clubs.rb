class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.text :description
      t.belongs_to :user, null: false 
      
      t.timestamps
    end
  end
end
