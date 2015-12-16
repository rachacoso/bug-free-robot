class RemoveArtsTypeIdFromMediaItems < ActiveRecord::Migration
  def change
    remove_column :media_items, :arts_type_id, :integer
  end
end
