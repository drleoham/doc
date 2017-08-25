class CreateDcomments < ActiveRecord::Migration
  def change
    create_table :dcomments do |t|
      t.text :content
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
