class CreateJoinTableMediaTypeArtsType < ActiveRecord::Migration
  def change
    create_join_table :media_types, :arts_types do |t|
      t.index [:media_type_id, :arts_type_id]
      t.index [:arts_type_id, :media_type_id]
    end
  end
end
