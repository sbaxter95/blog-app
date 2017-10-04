class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.string :email_address
      t.string :location
      t.integer :post_id

      t.timestamps
    end
  end
end
