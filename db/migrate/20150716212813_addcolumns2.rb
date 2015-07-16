class Addcolumns2 < ActiveRecord::Migration
  def change
    add_column :places, :place_id, :integer
    add_column :comments, :comment_id, :integer
  end
end
