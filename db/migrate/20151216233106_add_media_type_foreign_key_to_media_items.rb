class AddMediaTypeForeignKeyToMediaItems < ActiveRecord::Migration
  def change
  	 add_foreign_key :media_items, :media_types
  end
end
