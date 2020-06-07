class DropTablename < ActiveRecord::Migration[5.0]
  def change
    drop_table :create_school_classes
  end
end
