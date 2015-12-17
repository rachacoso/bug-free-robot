class CreateJoinTableArtsTypeMediaItem < ActiveRecord::Migration
  def change
    create_join_table :arts_types, :media_items do |t|
      t.index :arts_type_id
      t.index :media_item_id
    end
  end
end
