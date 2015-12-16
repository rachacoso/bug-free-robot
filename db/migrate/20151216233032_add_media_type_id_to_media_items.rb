class AddMediaTypeIdToMediaItems < ActiveRecord::Migration
  def change
    add_column :media_items, :media_type_id, :integer
  end
end
