class CreateBook < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false 
      t.string :author, null: false 
      t.text :description

      t.timestamps
    end
  end
end
