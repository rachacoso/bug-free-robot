class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :name, null: false
      t.integer :times_served
      t.integer :times_selected
      t.integer :choice_category_id

      t.timestamps null: false
    end
  end
end
