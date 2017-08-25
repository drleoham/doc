class CreatePosttests < ActiveRecord::Migration
  def change
    create_table :posttests do |t|
      
      t.string      :title2
      t.string      :content2

      t.timestamps null: false
    end
  end
end
