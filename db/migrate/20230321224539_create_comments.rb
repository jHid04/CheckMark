class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment, null: false 
      t.belongs_to :user
      t.belongs_to :discussion

      t.timestamps
    end
  end
end
