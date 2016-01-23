class CreateMediaItems < ActiveRecord::Migration
  def change
    create_table :media_items do |t|
      t.string :name,  null: false
      t.text :description
      t.integer :times_served
      t.integer :duration
      t.integer :media_type_id

      t.timestamps null: false
    end
  end
end
