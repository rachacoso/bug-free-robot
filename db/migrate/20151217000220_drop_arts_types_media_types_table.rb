class DropArtsTypesMediaTypesTable < ActiveRecord::Migration
  def up
    drop_table :arts_types_media_types
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
