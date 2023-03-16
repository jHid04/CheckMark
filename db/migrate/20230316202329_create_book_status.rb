class CreateBookStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :book_statuses do |t|
      t.string :status, null: false 
      t.belongs_to :book
      t.belongs_to :user

      t.timestamps
    end
  end
end
