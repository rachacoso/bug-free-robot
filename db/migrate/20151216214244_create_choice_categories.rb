class CreateChoiceCategories < ActiveRecord::Migration
  def change
    create_table :choice_categories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
