class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body

      t.timestamps
    end
    add_index :comments, :post_id
    add_index :user
  end
end
