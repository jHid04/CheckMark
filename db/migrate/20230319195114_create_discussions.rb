class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.string :title, null: false 
      t.text  :description
      t.belongs_to :user, null: false 
      t.belongs_to :club, null: false 

      t.timestamps
    end
  end
end
