class CreateDetailcoms < ActiveRecord::Migration
  def change
    create_table :detailcoms do |t|
      t.text :content
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
