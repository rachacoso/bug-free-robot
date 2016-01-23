class CreateJoinTableArtsTypesMediaItems < ActiveRecord::Migration
  def change
    create_join_table :arts_types, :media_items
  end
end
